import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:tproger_mobile_app/src/models/article_model.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  BuiltList<ArticleModel> get articles;

  AppState._();
  factory AppState() = _$AppState;

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(AppStateBuilder b) => b
    ..articles.replace([]);
}