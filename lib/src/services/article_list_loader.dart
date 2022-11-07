import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/article_addition_data.dart';
import 'package:tproger_mobile_app/src/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/http_service.dart';

@singleton
class ArticleListLoader {
  final Logger _logger;
  final ArticleListParser _articleListParser;
  final HttpService _httpService;

  ArticleListLoader(
    this._logger,
    this._articleListParser,
    this._httpService,
  );

  Future<List<ArticleModel>> load() async {
    List<ParsedArticle> parsedArticles;

    try {
      final response = await _httpService.loadInitialContent();
      parsedArticles = _articleListParser.parse(response.html);
    } on LoadInitialContentException catch (error, stackTrace) {
      _logger.e('Article list load', error, stackTrace);
      throw const LoadArticlesListException();
    }

    final additionalData = await _loadArticlesAdditionalData(parsedArticles);
    return _getArticleModels(additionalData);
  }

  Future<List<ArticleAdditionalData>> _loadArticlesAdditionalData(List<ParsedArticle> articles) async {
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
      .map((article) => ArticleAdditionalData(
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

  List<ArticleModel> _getArticleModels(List<ArticleAdditionalData> data) =>
    data.map(_getArticleModel).toList();

  ArticleModel _getArticleModel(ArticleAdditionalData data) => ArticleModel(
    id: data.sourceArticle.id,
    articleLink: data.sourceArticle.articleLink,
    title: data.sourceArticle.title,
    description: data.sourceArticle.description,
    authorName: data.sourceArticle.authorName,
    authorAvatarLink: data.sourceArticle.authorAvatarLink,
    imageLink: data.sourceArticle.imageLink,
    imageBackgroundColor: data.sourceArticle.imageBackgroundColor,
    bookmarkCount: data.bookmarkCount,
    viewCount: data.viewCount,
    commentCount: data.commentCount,
    reactionToCounts: data.reactions,
  );
}
