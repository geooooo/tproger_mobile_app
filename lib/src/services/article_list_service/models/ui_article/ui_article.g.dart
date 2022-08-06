// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UiArticle extends UiArticle {
  @override
  final String title;
  @override
  final String articleLink;
  @override
  final String description;
  @override
  final int id;
  @override
  final ImageType imageType;
  @override
  final BuiltMap<Reaction, int> reactionToCounts;
  @override
  final int bookmarkCount;
  @override
  final int viewCount;
  @override
  final int commentCount;
  @override
  final String? imageLink;
  @override
  final Color? imageBackgroundColor;
  @override
  final String? authorAvatarLink;
  @override
  final String? authorName;

  factory _$UiArticle([void Function(UiArticleBuilder)? updates]) =>
      (new UiArticleBuilder()..update(updates))._build();

  _$UiArticle._(
      {required this.title,
      required this.articleLink,
      required this.description,
      required this.id,
      required this.imageType,
      required this.reactionToCounts,
      required this.bookmarkCount,
      required this.viewCount,
      required this.commentCount,
      this.imageLink,
      this.imageBackgroundColor,
      this.authorAvatarLink,
      this.authorName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'UiArticle', 'title');
    BuiltValueNullFieldError.checkNotNull(
        articleLink, r'UiArticle', 'articleLink');
    BuiltValueNullFieldError.checkNotNull(
        description, r'UiArticle', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'UiArticle', 'id');
    BuiltValueNullFieldError.checkNotNull(imageType, r'UiArticle', 'imageType');
    BuiltValueNullFieldError.checkNotNull(
        reactionToCounts, r'UiArticle', 'reactionToCounts');
    BuiltValueNullFieldError.checkNotNull(
        bookmarkCount, r'UiArticle', 'bookmarkCount');
    BuiltValueNullFieldError.checkNotNull(viewCount, r'UiArticle', 'viewCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'UiArticle', 'commentCount');
  }

  @override
  UiArticle rebuild(void Function(UiArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UiArticleBuilder toBuilder() => new UiArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UiArticle &&
        title == other.title &&
        articleLink == other.articleLink &&
        description == other.description &&
        id == other.id &&
        imageType == other.imageType &&
        reactionToCounts == other.reactionToCounts &&
        bookmarkCount == other.bookmarkCount &&
        viewCount == other.viewCount &&
        commentCount == other.commentCount &&
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
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, title.hashCode),
                                                    articleLink.hashCode),
                                                description.hashCode),
                                            id.hashCode),
                                        imageType.hashCode),
                                    reactionToCounts.hashCode),
                                bookmarkCount.hashCode),
                            viewCount.hashCode),
                        commentCount.hashCode),
                    imageLink.hashCode),
                imageBackgroundColor.hashCode),
            authorAvatarLink.hashCode),
        authorName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UiArticle')
          ..add('title', title)
          ..add('articleLink', articleLink)
          ..add('description', description)
          ..add('id', id)
          ..add('imageType', imageType)
          ..add('reactionToCounts', reactionToCounts)
          ..add('bookmarkCount', bookmarkCount)
          ..add('viewCount', viewCount)
          ..add('commentCount', commentCount)
          ..add('imageLink', imageLink)
          ..add('imageBackgroundColor', imageBackgroundColor)
          ..add('authorAvatarLink', authorAvatarLink)
          ..add('authorName', authorName))
        .toString();
  }
}

class UiArticleBuilder implements Builder<UiArticle, UiArticleBuilder> {
  _$UiArticle? _$v;

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

  ImageType? _imageType;
  ImageType? get imageType => _$this._imageType;
  set imageType(ImageType? imageType) => _$this._imageType = imageType;

  MapBuilder<Reaction, int>? _reactionToCounts;
  MapBuilder<Reaction, int> get reactionToCounts =>
      _$this._reactionToCounts ??= new MapBuilder<Reaction, int>();
  set reactionToCounts(MapBuilder<Reaction, int>? reactionToCounts) =>
      _$this._reactionToCounts = reactionToCounts;

  int? _bookmarkCount;
  int? get bookmarkCount => _$this._bookmarkCount;
  set bookmarkCount(int? bookmarkCount) =>
      _$this._bookmarkCount = bookmarkCount;

  int? _viewCount;
  int? get viewCount => _$this._viewCount;
  set viewCount(int? viewCount) => _$this._viewCount = viewCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(String? imageLink) => _$this._imageLink = imageLink;

  Color? _imageBackgroundColor;
  Color? get imageBackgroundColor => _$this._imageBackgroundColor;
  set imageBackgroundColor(Color? imageBackgroundColor) =>
      _$this._imageBackgroundColor = imageBackgroundColor;

  String? _authorAvatarLink;
  String? get authorAvatarLink => _$this._authorAvatarLink;
  set authorAvatarLink(String? authorAvatarLink) =>
      _$this._authorAvatarLink = authorAvatarLink;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  UiArticleBuilder();

  UiArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _articleLink = $v.articleLink;
      _description = $v.description;
      _id = $v.id;
      _imageType = $v.imageType;
      _reactionToCounts = $v.reactionToCounts.toBuilder();
      _bookmarkCount = $v.bookmarkCount;
      _viewCount = $v.viewCount;
      _commentCount = $v.commentCount;
      _imageLink = $v.imageLink;
      _imageBackgroundColor = $v.imageBackgroundColor;
      _authorAvatarLink = $v.authorAvatarLink;
      _authorName = $v.authorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UiArticle other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UiArticle;
  }

  @override
  void update(void Function(UiArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UiArticle build() => _build();

  _$UiArticle _build() {
    _$UiArticle _$result;
    try {
      _$result = _$v ??
          new _$UiArticle._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'UiArticle', 'title'),
              articleLink: BuiltValueNullFieldError.checkNotNull(
                  articleLink, r'UiArticle', 'articleLink'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'UiArticle', 'description'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'UiArticle', 'id'),
              imageType: BuiltValueNullFieldError.checkNotNull(
                  imageType, r'UiArticle', 'imageType'),
              reactionToCounts: reactionToCounts.build(),
              bookmarkCount: BuiltValueNullFieldError.checkNotNull(
                  bookmarkCount, r'UiArticle', 'bookmarkCount'),
              viewCount: BuiltValueNullFieldError.checkNotNull(
                  viewCount, r'UiArticle', 'viewCount'),
              commentCount: BuiltValueNullFieldError.checkNotNull(
                  commentCount, r'UiArticle', 'commentCount'),
              imageLink: imageLink,
              imageBackgroundColor: imageBackgroundColor,
              authorAvatarLink: authorAvatarLink,
              authorName: authorName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reactionToCounts';
        reactionToCounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UiArticle', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
