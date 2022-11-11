import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';

class AppStateChangeNotifier with ChangeNotifier {
  final ArticleListService _articleListService;

  var _state = AppState();

  BuiltList<ArticleModel> get articles => _state.articles;
  bool get isArticlesLoaded => _state.isArticlesLoaded;

  AppStateChangeNotifier(this._articleListService);

  Future<void> loadArticles() async {
    final articles = await _articleListService.getArticles();

    _state = _state.rebuild((b) => b
      ..articles.replace(articles)
      ..isArticlesLoaded = true
    );

    notifyListeners();
  }
}