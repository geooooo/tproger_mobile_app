import 'package:tproger_mobile_app/src/models/article_addition_data_dto.dart';
import 'package:tproger_mobile_app/src/models/api_models/article_bookmark_count_dto.dart';
import 'package:tproger_mobile_app/src/models/api_models/article_comment_count_dto.dart';
// import 'package:tproger_mobile_app/src/models/api_models/article_reactions_dto.dart';
import 'package:tproger_mobile_app/src/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/article_list_page_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

class ArticleListLoader {
  final ArticleListPageParser _articleListPageParser;
  final HttpService _httpService;

  ArticleListLoader(
    this._articleListPageParser,
    this._httpService,
  );

  Future<List<Article>> load() async {
    final html = await _httpService.loadArticleListPageContent();

    final articles = _articleListPageParser.parse(html);
    final additionalData = await _loadArticlesAdditionalData(articles);
    final updatedArticles = _getArticlesWithAddtionalData(additionalData);

    return updatedArticles;
  }

  Future<List<ArticleAdditionalData>> _loadArticlesAdditionalData(Iterable<Article> articles) async {
    final encodedIds = articles.map((article) => article.id).join(',');

    final responses = await Future.wait([
      _httpService.loadArticleBookmarkCounts(encodedIds),
      _httpService.loadArticleCommentCounts(encodedIds),
      // _httpService.loadArticleReactions(encodedIds),
    ]);

    final bookmarkCountsDto = responses[0] as List<ArticleBookmarkCountDto>;
    final bookmarkCounts = {
      for (final item in bookmarkCountsDto) item.postId: item.count
    };

    final commentCountsDto = responses[1] as List<ArticleCommentCountDto>;
    final commentCounts = {
      for (final item in commentCountsDto) item.postId: item.count
    };

    // final reactionsDtos = responses[2] as List<ArticleReactionsDto>;
    // final reactions = { for (final item in reactionsDtos) item.postId: 
    //   { for (final reaction in item.reactions) 
    //     reaction.type: reaction.count
    //   } 
    // };

    return [ for (final article in articles) ArticleAdditionalData(
      sourceArticle: article,
      bookmarkCount: bookmarkCounts[article.id] ?? 0,
      commentCount: commentCounts[article.id] ?? 0,
      reactions: null,//reactions[article.id],
    )];
  }

  List<Article> _getArticlesWithAddtionalData(List<ArticleAdditionalData> data) =>
    data.map(_updateArticleData).toList();

  Article _updateArticleData(ArticleAdditionalData data) => 
    data.sourceArticle.rebuild((builder) {
      builder
        ..bookmarkCount = data.bookmarkCount
        ..commentCount = data.commentCount;
      
      if (data.reactions != null) {
        final actualReactions = data.reactions!;
        for (final reactionType in actualReactions.keys) {
          builder.reactions[reactionType] = actualReactions[reactionType]!;
        }
      }

      return builder;
    });
}