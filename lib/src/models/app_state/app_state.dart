import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/filter_data.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  BuiltList<ArticleModel> get articles;
  AppTheme get theme;
  ArticlesSortType get articlesSortType;
  FilterData get filterData;
  bool get isSetThemeProgrammatically;
  bool get isArticlesFullLoaded;
  bool get isArticlesLoaded;
  int get articlesPageNumber;

  AppState._();
  factory AppState() = _$AppState;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(AppStateBuilder b) => b
    ..articles.replace([])
    ..theme = AppTheme.light()
    ..articlesSortType = ArticlesSortType.hot
    ..filterData.replace(FilterData())
    ..isSetThemeProgrammatically = false
    ..isArticlesFullLoaded = false
    ..isArticlesLoaded = false
    ..articlesPageNumber = 1;
}