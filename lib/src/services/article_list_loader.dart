import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_request.dart';

class ArticleListLoader {
  final ArticleListParser _articleListParser;
  final HttpService _httpService;

  ArticleListLoader(
    this._articleListParser,
    this._httpService,
  );

  //TODO: Add error handling
  Future<List<Article>> load() async {
    final response = await _httpService.loadInitialContent();
    final articles = _articleListParser.parse(response.html);

    await _loadArticlesAdditionalData(articles);
    // final updatedArticles = _getArticlesWithAddtionalData(additionalData);

    return [];
  }

  Future<List<Object>> _loadArticlesAdditionalData(
      List<Article> articles) async {
    final encodedIds = encodeIds(articles);

    final responses = await Future.wait([
      _httpService.loadArticlesCommentCounts(
          LoadArticlesCommentCountsRequest(encodedIds)),
      _httpService.loadArticlesBookmarkCounts(
          LoadArticlesBookmarkCountsRequest(encodedIds)),
      _httpService.loadArticleReactions(LoadArticleReactionsRequest(encodedIds)),
    ]);

    final r = responses.last as LoadArticleReactionsResponse;
    print(r.reactions.length);
    // for (final cc in r.counts) {
    //   print([cc.count, cc.postId]);
    // }

    // final bookmarkCountsDto = responses[0] as List<ArticleBookmarkCountDto>;
    // final bookmarkCounts = {
    //   for (final item in bookmarkCountsDto) item.postId: item.count
    // };

    // final commentCountsDto = responses[1] as List<ArticleCommentCountDto>;
    // final commentCounts = {
    //   for (final item in commentCountsDto) item.postId: item.count
    // };

    // final reactionsDtos = responses[2] as List<ArticleReactionsDto>;
    // final reactions = { for (final item in reactionsDtos) item.postId:
    //   { for (final reaction in item.reactions)
    //     reaction.type: reaction.count
    //   }
    // };

    return [
      // for (final article in articles)
      //   ArticleAdditionalData(
      //     sourceArticle: article,
      //     bookmarkCount: bookmarkCounts[article.id] ?? 0,
      //     commentCount: commentCounts[article.id] ?? 0,
      //     reactions: null, //reactions[article.id],
      //   )
    ];
  }

  String encodeIds(List<Article> articles) =>
      articles.map((article) => article.id).join(',');

  // List<Article> _getArticlesWithAddtionalData(
  //         List<ArticleAdditionalData> data) =>
  //     data.map(_updateArticleData).toList();

  // Article _updateArticleData(ArticleAdditionalData data) =>
  //     data.sourceArticle.rebuild((builder) {
  //       builder
  //         ..bookmarkCount = data.bookmarkCount
  //         ..commentCount = data.commentCount;

  //       if (data.reactions != null) {
  //         final actualReactions = data.reactions!;
  //         for (final reactionType in actualReactions.keys) {
  //           builder.reactions[reactionType] = actualReactions[reactionType]!;
  //         }
  //       }

  //       return builder;
  //     });
}
