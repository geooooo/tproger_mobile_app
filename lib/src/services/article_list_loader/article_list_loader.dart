import 'package:tproger_mobile_app/src/services/article_list_loader/models/article_addition_data.dart';
import 'package:tproger_mobile_app/src/services/article_list_loader/models/exceptions/load_articles_list_exception.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/article_list_parser.dart';
import 'package:tproger_mobile_app/src/services/article_list_parser/models/article/article.dart';
import 'package:tproger_mobile_app/src/services/http_service/http_service.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_article_reactions/load_article_reactions_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_bookmark_counts/load_articles_bookmark_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_request.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/api_models/load_articles_comment_counts/load_articles_comment_counts_response.dart';
import 'package:tproger_mobile_app/src/services/http_service/models/enums/reaction.dart';

class ArticleListLoader {
  final ArticleListParser _articleListParser;
  final HttpService _httpService;

  ArticleListLoader(
    this._articleListParser,
    this._httpService,
  );

  Future<List<Article>> load() async {
    List<Article> articles;
    List<ArticleAdditionalData> additionalData;

    try {
      final response = await _httpService.loadInitialContent();
      articles = _articleListParser.parse(response.html);

      additionalData = await _loadArticlesAdditionalData(articles);
    } on Exception {
      throw const LoadArticlesListException();
    }

    return _updateArticles(additionalData);
  }

  Future<List<ArticleAdditionalData>> _loadArticlesAdditionalData(
      List<Article> articles) async {
    final encodedIds = _encodeIds(articles);

    final responses = await Future.wait([
      _httpService.loadArticlesCommentCounts(
          LoadArticlesCommentCountsRequest(encodedIds)),
      _httpService.loadArticlesBookmarkCounts(
          LoadArticlesBookmarkCountsRequest(encodedIds)),
      _httpService
          .loadArticleReactions(LoadArticleReactionsRequest(encodedIds)),
    ]);

    final loadArticlesCommentCountsResponse =
        responses[0] as LoadArticlesCommentCountsResponse;
    final loadArticlesBookmarkCountsResponse =
        responses[1] as LoadArticlesBookmarkCountsResponse;
    final loadArticleReactionsResponse =
        responses[2] as LoadArticleReactionsResponse;

    final idsToCommentCounts =
        _getArticleIdsToCommentCounts(loadArticlesCommentCountsResponse);
    final idsToBookmarkCounts =
        _getArticleIdsToBookmarkCounts(loadArticlesBookmarkCountsResponse);
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

  Map<int, int> _getArticleIdsToCommentCounts(
          LoadArticlesCommentCountsResponse response) =>
      {for (final count in response.counts) count.articleId: count.count};

  Map<int, int> _getArticleIdsToBookmarkCounts(
          LoadArticlesBookmarkCountsResponse response) =>
      {for (final count in response.counts) count.articleId: count.count};

  Map<int, Map<Reaction, int>> _getArticleReactions(
      LoadArticleReactionsResponse response) {
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

  Article _updateArticle(ArticleAdditionalData data) =>
      data.sourceArticle.rebuild((builder) {
        builder
          ..bookmarkCount = data.bookmarkCount
          ..commentCount = data.commentCount;

        for (final reaction in data.reactions.keys) {
          final count = data.reactions[reaction]!;
          builder.reactionToCounts[reaction] = count;
        }

        return builder;
      });
}
