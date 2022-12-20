import 'package:equatable/equatable.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class ArticleListPageViewModel extends Equatable {
  final bool isArticlesFullLoaded;
  final ArticlesSortType articlesSortType;
  final bool isFilterEnabled;
  final List<ArticleModel> articles;
  final DynamicFunctionDynamic dispatch;

  @override
  List<Object> get props => [
    isArticlesFullLoaded,
    articlesSortType,
    isFilterEnabled,
    articles,
    dispatch,
  ];

  const ArticleListPageViewModel({
    required this.isArticlesFullLoaded,
    required this.articlesSortType,
    required this.isFilterEnabled,
    required this.articles,
    required this.dispatch,
  });
}