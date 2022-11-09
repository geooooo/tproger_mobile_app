import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/models/load_article_reactions/load_article_reactions_request.dart';
import 'package:tproger_mobile_app/src/models/load_article_reactions/load_article_reactions_response.dart';
import 'package:tproger_mobile_app/src/models/load_articles_bookmark_counts/load_articles_bookmark_counts_request.dart';
import 'package:tproger_mobile_app/src/models/load_articles_bookmark_counts/load_articles_bookmark_counts_response.dart';
import 'package:tproger_mobile_app/src/models/load_articles_comment_counts/load_articles_comment_counts_request.dart';
import 'package:tproger_mobile_app/src/models/load_articles_comment_counts/load_articles_comment_counts_response.dart';
import 'package:tproger_mobile_app/src/models/load_articles_view_counts/load_articles_view_counts_request.dart';
import 'package:tproger_mobile_app/src/models/load_articles_view_counts/load_articles_view_counts_response.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/addition_data.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/parsed_article.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

@singleton
class ArticleListLoader {
  final ArticleListParser _articleListParser;
  final HttpService _httpService;

  ArticleListLoader(
    this._articleListParser,
    this._httpService,
  );

  Future<List<ArticleModel>> load() async {
    final response = await _httpService.loadInitialContent();
    final parsedArticles = _articleListParser.parse(response.html);
    
    final data = await _loadAdditionalData(parsedArticles);
    return _getArticleModels(data);
  }

  Future<List<AdditionalData>> _loadAdditionalData(List<ParsedArticle> articles) async {
    final encodedIds = _encodeIds(articles);

    final responses = await Future.wait([
      _httpService.loadArticlesCommentCounts(LoadArticlesCommentCountsRequest(encodedIds)),
      _httpService.loadArticlesBookmarkCounts(LoadArticlesBookmarkCountsRequest(encodedIds)),
      _httpService.loadArticlesViewCounts(LoadArticlesViewCountsRequest(encodedIds)),
      _httpService.loadArticleReactions(LoadArticleReactionsRequest(encodedIds)),
    ]);

    final loadArticlesCommentCountsResponse = responses[0] as LoadArticlesCommentCountsResponse;
    final loadArticlesBookmarkCountsResponse = responses[1] as LoadArticlesBookmarkCountsResponse;
    final loadArticlesViewCountsResponse = responses[2] as LoadArticlesViewCountsResponse;
    final loadArticleReactionsResponse = responses[3] as LoadArticleReactionsResponse;

    final idsToCommentCounts = _getArticleIdsToCommentCounts(loadArticlesCommentCountsResponse);
    final idsToBookmarkCounts = _getArticleIdsToBookmarkCounts(loadArticlesBookmarkCountsResponse);
    final idsToViewCounts = _getArticleIdsToViewCounts(loadArticlesViewCountsResponse);
    final idsToReactions = _getArticleReactions(loadArticleReactionsResponse);

    final additionalData = articles
      .map((article) => AdditionalData(
        sourceArticle: article,
        commentCount: idsToCommentCounts[article.id] ?? 0,
        bookmarkCount: idsToBookmarkCounts[article.id] ?? 0,
        viewCount: idsToViewCounts[article.id] ?? 0,
        reactions: idsToReactions[article.id] ?? {},
      ))
      .toList();

    return additionalData;
  }

  String _encodeIds(List<ParsedArticle> articles) =>
    articles.map((article) => article.id).join(',');

  Map<int, int> _getArticleIdsToCommentCounts(LoadArticlesCommentCountsResponse response) =>
    {for (final count in response.counts) count.articleId: count.count};

  Map<int, int> _getArticleIdsToBookmarkCounts(LoadArticlesBookmarkCountsResponse response) =>
    {for (final count in response.counts) count.articleId: count.count};

  Map<int, int> _getArticleIdsToViewCounts(LoadArticlesViewCountsResponse response) =>
    {for (final count in response.counts) count.articleId: count.count};

  Map<int, Map<int, int>> _getArticleReactions(LoadArticleReactionsResponse response) {
    final idsToReactions = <int, Map<int, int>>{};

    for (final articleReaction in response.articleReactions) {
      final reactions = articleReaction.reactions;
      final articleId = articleReaction.articleId;

      final reactionToCount = {
        for (final reaction in reactions) reaction.type: reaction.count
      };

      idsToReactions[articleId] = reactionToCount;
    }

    return idsToReactions;
  }

  List<ArticleModel> _getArticleModels(List<AdditionalData> data) =>
    data.map(_getArticleModel).toList();

  ArticleModel _getArticleModel(AdditionalData data) => ArticleModel(
    id: data.sourceArticle.id,
    articleLink: data.sourceArticle.articleLink,
    title: data.sourceArticle.title,
    description: data.sourceArticle.description,
    author: data.sourceArticle.author,
    image: data.sourceArticle.image,
    bookmarkCount: data.bookmarkCount,
    viewCount: data.viewCount,
    commentCount: data.commentCount,
    reactionToCounts: _getRreactionToCounts(data.reactions),
  );

  Map<Reaction, int> _getRreactionToCounts(Map<int, int> reactionToCounts) => 
    { for (final reaction in Reaction.values) 
      reaction: reactionToCounts[reaction.value] ?? 0
    };
}