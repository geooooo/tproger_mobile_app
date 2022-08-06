import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/article_model/article_model.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/parsed_article/parsed_article.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/exceptions/load_initial_content_exception.dart';

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

    final articles = parsedArticles
      .map(_parsedArticleToArticleModel)
      .toList();

    // final additionalData = await _loadArticlesAdditionalData(articles);
    // return _updateArticles(additionalData);
    return articles;
  }

  ArticleModel _parsedArticleToArticleModel(ParsedArticle parsedArticle) => ArticleModel(
    title: parsedArticle.title, 
    articleLink: parsedArticle.articleLink, 
    description: parsedArticle.description, 
    id: parsedArticle.id,
    authorAvatarLink: parsedArticle.authorAvatarLink,
    authorName: parsedArticle.authorName,
    imageBackgroundColor: parsedArticle.imageBackgroundColor,
    imageLink: parsedArticle.imageLink,
  );
/*
  Future<List<ArticleAdditionalData>> _loadArticlesAdditionalData(List<Article> articles) async {
    final encodedIds = _encodeIds(articles);

    final responses = await Future.wait([
      _httpService.loadArticlesCommentCounts(LoadArticlesCommentCountsRequest(encodedIds)),
      _httpService.loadArticlesBookmarkCounts(LoadArticlesBookmarkCountsRequest(encodedIds)),
      _httpService.loadArticleReactions(LoadArticleReactionsRequest(encodedIds)),
    ]);

    final loadArticlesCommentCountsResponse = responses[0] as LoadArticlesCommentCountsResponse;
    final loadArticlesBookmarkCountsResponse = responses[1] as LoadArticlesBookmarkCountsResponse;
    final loadArticleReactionsResponse = responses[2] as LoadArticleReactionsResponse;

    final idsToCommentCounts = _getArticleIdsToCommentCounts(loadArticlesCommentCountsResponse);
    final idsToBookmarkCounts = _getArticleIdsToBookmarkCounts(loadArticlesBookmarkCountsResponse);
    final idsToReactions = _getArticleReactions(loadArticleReactionsResponse);

    final additionalData = articles
      .map((article) => ArticleAdditionalData(
        sourceArticle: article,
        commentCount: idsToCommentCounts[article.id] ?? 0,
        bookmarkCount: idsToBookmarkCounts[article.id] ?? 0,
        reactions: idsToReactions[article.id] ?? {},
      ))
      .toList();

    return additionalData;
  }

  String _encodeIds(List<Article> articles) =>
    articles.map((article) => article.id).join(',');

  Map<int, int> _getArticleIdsToCommentCounts(LoadArticlesCommentCountsResponse response) =>
    {for (final count in response.counts) count.articleId: count.count};

  Map<int, int> _getArticleIdsToBookmarkCounts(LoadArticlesBookmarkCountsResponse response) =>
    {for (final count in response.counts) count.articleId: count.count};

  Map<int, Map<Reaction, int>> _getArticleReactions(LoadArticleReactionsResponse response) {
    final idsToReactions = <int, Map<Reaction, int>>{};

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

  List<Article> _updateArticles(List<ArticleAdditionalData> data) =>
    data.map(_updateArticle).toList();

  Article _updateArticle(ArticleAdditionalData data) => data.sourceArticle.rebuild((builder) {
    builder
      ..bookmarkCount = data.bookmarkCount
      ..commentCount = data.commentCount;

    for (final reaction in data.reactions.keys) {
      final count = data.reactions[reaction]!;
      builder.reactionToCounts[reaction] = count;
    }

    return builder;
  });*/
}
