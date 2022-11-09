// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_icon_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleIconImage extends ArticleIconImage {
  @override
  final String backgroundColor;
  @override
  final String link;

  factory _$ArticleIconImage(
          [void Function(ArticleIconImageBuilder)? updates]) =>
      (new ArticleIconImageBuilder()..update(updates))._build();

  _$ArticleIconImage._({required this.backgroundColor, required this.link})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        backgroundColor, r'ArticleIconImage', 'backgroundColor');
    BuiltValueNullFieldError.checkNotNull(link, r'ArticleIconImage', 'link');
  }

  @override
  ArticleIconImage rebuild(void Function(ArticleIconImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleIconImageBuilder toBuilder() =>
      new ArticleIconImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleIconImage &&
        backgroundColor == other.backgroundColor &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, backgroundColor.hashCode), link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleIconImage')
          ..add('backgroundColor', backgroundColor)
          ..add('link', link))
        .toString();
  }
}

class ArticleIconImageBuilder
    implements Builder<ArticleIconImage, ArticleIconImageBuilder> {
  _$ArticleIconImage? _$v;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  ArticleIconImageBuilder();

  ArticleIconImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _backgroundColor = $v.backgroundColor;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleIconImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleIconImage;
  }

  @override
  void update(void Function(ArticleIconImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleIconImage build() => _build();

  _$ArticleIconImage _build() {
    final _$result = _$v ??
        new _$ArticleIconImage._(
            backgroundColor: BuiltValueNullFieldError.checkNotNull(
                backgroundColor, r'ArticleIconImage', 'backgroundColor'),
            link: BuiltValueNullFieldError.checkNotNull(
                link, r'ArticleIconImage', 'link'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
