// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final BuiltList<ArticleModel> articles;
  @override
  final AppTheme theme;
  @override
  final bool isThemeInitialized;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.articles,
      required this.theme,
      required this.isThemeInitialized})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(articles, r'AppState', 'articles');
    BuiltValueNullFieldError.checkNotNull(theme, r'AppState', 'theme');
    BuiltValueNullFieldError.checkNotNull(
        isThemeInitialized, r'AppState', 'isThemeInitialized');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        articles == other.articles &&
        theme == other.theme &&
        isThemeInitialized == other.isThemeInitialized;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, articles.hashCode), theme.hashCode),
        isThemeInitialized.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('articles', articles)
          ..add('theme', theme)
          ..add('isThemeInitialized', isThemeInitialized))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  ListBuilder<ArticleModel>? _articles;
  ListBuilder<ArticleModel> get articles =>
      _$this._articles ??= new ListBuilder<ArticleModel>();
  set articles(ListBuilder<ArticleModel>? articles) =>
      _$this._articles = articles;

  AppTheme? _theme;
  AppTheme? get theme => _$this._theme;
  set theme(AppTheme? theme) => _$this._theme = theme;

  bool? _isThemeInitialized;
  bool? get isThemeInitialized => _$this._isThemeInitialized;
  set isThemeInitialized(bool? isThemeInitialized) =>
      _$this._isThemeInitialized = isThemeInitialized;

  AppStateBuilder() {
    AppState._setDefaults(this);
  }

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articles = $v.articles.toBuilder();
      _theme = $v.theme;
      _isThemeInitialized = $v.isThemeInitialized;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              articles: articles.build(),
              theme: BuiltValueNullFieldError.checkNotNull(
                  theme, r'AppState', 'theme'),
              isThemeInitialized: BuiltValueNullFieldError.checkNotNull(
                  isThemeInitialized, r'AppState', 'isThemeInitialized'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'articles';
        articles.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas