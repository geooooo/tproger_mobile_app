// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parsed_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ParsedArticle extends ParsedArticle {
  @override
  final String title;
  @override
  final String articleLink;
  @override
  final String description;
  @override
  final int id;
  @override
  final String? imageLink;
  @override
  final String? imageBackgroundColor;
  @override
  final String? authorAvatarLink;
  @override
  final String? authorName;

  factory _$ParsedArticle([void Function(ParsedArticleBuilder)? updates]) =>
      (new ParsedArticleBuilder()..update(updates))._build();

  _$ParsedArticle._(
      {required this.title,
      required this.articleLink,
      required this.description,
      required this.id,
      this.imageLink,
      this.imageBackgroundColor,
      this.authorAvatarLink,
      this.authorName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'ParsedArticle', 'title');
    BuiltValueNullFieldError.checkNotNull(
        articleLink, r'ParsedArticle', 'articleLink');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ParsedArticle', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'ParsedArticle', 'id');
  }

  @override
  ParsedArticle rebuild(void Function(ParsedArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParsedArticleBuilder toBuilder() => new ParsedArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParsedArticle &&
        title == other.title &&
        articleLink == other.articleLink &&
        description == other.description &&
        id == other.id &&
        imageLink == other.imageLink &&
        imageBackgroundColor == other.imageBackgroundColor &&
        authorAvatarLink == other.authorAvatarLink &&
        authorName == other.authorName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), articleLink.hashCode),
                            description.hashCode),
                        id.hashCode),
                    imageLink.hashCode),
                imageBackgroundColor.hashCode),
            authorAvatarLink.hashCode),
        authorName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParsedArticle')
          ..add('title', title)
          ..add('articleLink', articleLink)
          ..add('description', description)
          ..add('id', id)
          ..add('imageLink', imageLink)
          ..add('imageBackgroundColor', imageBackgroundColor)
          ..add('authorAvatarLink', authorAvatarLink)
          ..add('authorName', authorName))
        .toString();
  }
}

class ParsedArticleBuilder
    implements Builder<ParsedArticle, ParsedArticleBuilder> {
  _$ParsedArticle? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _articleLink;
  String? get articleLink => _$this._articleLink;
  set articleLink(String? articleLink) => _$this._articleLink = articleLink;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(String? imageLink) => _$this._imageLink = imageLink;

  String? _imageBackgroundColor;
  String? get imageBackgroundColor => _$this._imageBackgroundColor;
  set imageBackgroundColor(String? imageBackgroundColor) =>
      _$this._imageBackgroundColor = imageBackgroundColor;

  String? _authorAvatarLink;
  String? get authorAvatarLink => _$this._authorAvatarLink;
  set authorAvatarLink(String? authorAvatarLink) =>
      _$this._authorAvatarLink = authorAvatarLink;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  ParsedArticleBuilder();

  ParsedArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _articleLink = $v.articleLink;
      _description = $v.description;
      _id = $v.id;
      _imageLink = $v.imageLink;
      _imageBackgroundColor = $v.imageBackgroundColor;
      _authorAvatarLink = $v.authorAvatarLink;
      _authorName = $v.authorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParsedArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParsedArticle;
  }

  @override
  void update(void Function(ParsedArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParsedArticle build() => _build();

  _$ParsedArticle _build() {
    final _$result = _$v ??
        new _$ParsedArticle._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ParsedArticle', 'title'),
            articleLink: BuiltValueNullFieldError.checkNotNull(
                articleLink, r'ParsedArticle', 'articleLink'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'ParsedArticle', 'description'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ParsedArticle', 'id'),
            imageLink: imageLink,
            imageBackgroundColor: imageBackgroundColor,
            authorAvatarLink: authorAvatarLink,
            authorName: authorName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
