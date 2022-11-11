import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';

class AppStateChangeNotifier with ChangeNotifier {
  final ArticleListService _articleListService;

  var _state = AppState();

  AppStateChangeNotifier(this._articleListService);

  Future<void> getArticles() async {
    final articles = await _articleListService.getArticles();

    _state = _state.rebuild((b) => b.articles.replace(articles));

    notifyListeners();
  }
}