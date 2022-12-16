import 'package:equatable/equatable.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';

class ArticleListPageViewModel extends Equatable {
  final bool isArticlesLoaded;
  final bool isArticlesFullLoaded;
  final int articlesPageNumber;
  final ArticlesSortType articlesSortType;
  final FilterData filterData;
  final List<ArticleModel> articles;
  final DynamicFunctionDynamic dispatch;

  @override
  List<Object> get props => [
    isArticlesLoaded,
    isArticlesFullLoaded,
    articlesPageNumber,
    articlesSortType,
    filterData,
    articles,
    dispatch,
  ];

  const ArticleListPageViewModel({
    required this.isArticlesLoaded,
    required this.isArticlesFullLoaded,
    required this.articlesPageNumber,
    required this.articlesSortType,
    required this.filterData,
    required this.articles,
    required this.dispatch,
  });
}