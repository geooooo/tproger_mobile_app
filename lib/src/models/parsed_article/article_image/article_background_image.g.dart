// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_background_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleBackgroundImage extends ArticleBackgroundImage {
  @override
  final String link;

  factory _$ArticleBackgroundImage(
          [void Function(ArticleBackgroundImageBuilder)? updates]) =>
      (new ArticleBackgroundImageBuilder()..update(updates))._build();

  _$ArticleBackgroundImage._({required this.link}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        link, r'ArticleBackgroundImage', 'link');
  }

  @override
  ArticleBackgroundImage rebuild(
          void Function(ArticleBackgroundImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBackgroundImageBuilder toBuilder() =>
      new ArticleBackgroundImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleBackgroundImage && link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(0, link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleBackgroundImage')
          ..add('link', link))
        .toString();
  }
}

class ArticleBackgroundImageBuilder
    implements Builder<ArticleBackgroundImage, ArticleBackgroundImageBuilder> {
  _$ArticleBackgroundImage? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  ArticleBackgroundImageBuilder();

  ArticleBackgroundImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleBackgroundImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleBackgroundImage;
  }

  @override
  void update(void Function(ArticleBackgroundImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleBackgroundImage build() => _build();

  _$ArticleBackgroundImage _build() {
    final _$result = _$v ??
        new _$ArticleBackgroundImage._(
            link: BuiltValueNullFieldError.checkNotNull(
                link, r'ArticleBackgroundImage', 'link'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
