// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleModel extends ArticleModel {
  @override
  final String title;
  @override
  final String articleLink;
  @override
  final String description;
  @override
  final int id;
  @override
  final int bookmarkCount;
  @override
  final int commentCount;
  @override
  final BuiltMap<int, int> reactionToCounts;
  @override
  final String? imageLink;
  @override
  final String? imageBackgroundColor;
  @override
  final String? authorAvatarLink;
  @override
  final String? authorName;

  factory _$ArticleModel([void Function(ArticleModelBuilder)? updates]) =>
      (new ArticleModelBuilder()..update(updates))._build();

  _$ArticleModel._(
      {required this.title,
      required this.articleLink,
      required this.description,
      required this.id,
      required this.bookmarkCount,
      required this.commentCount,
      required this.reactionToCounts,
      this.imageLink,
      this.imageBackgroundColor,
      this.authorAvatarLink,
      this.authorName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'ArticleModel', 'title');
    BuiltValueNullFieldError.checkNotNull(
        articleLink, r'ArticleModel', 'articleLink');
    BuiltValueNullFieldError.checkNotNull(
        description, r'ArticleModel', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'ArticleModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        bookmarkCount, r'ArticleModel', 'bookmarkCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'ArticleModel', 'commentCount');
    BuiltValueNullFieldError.checkNotNull(
        reactionToCounts, r'ArticleModel', 'reactionToCounts');
  }

  @override
  ArticleModel rebuild(void Function(ArticleModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleModelBuilder toBuilder() => new ArticleModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleModel &&
        title == other.title &&
        articleLink == other.articleLink &&
        description == other.description &&
        id == other.id &&
        bookmarkCount == other.bookmarkCount &&
        commentCount == other.commentCount &&
        reactionToCounts == other.reactionToCounts &&
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
                                        $jc($jc(0, title.hashCode),
                                            articleLink.hashCode),
                                        description.hashCode),
                                    id.hashCode),
                                bookmarkCount.hashCode),
                            commentCount.hashCode),
                        reactionToCounts.hashCode),
                    imageLink.hashCode),
                imageBackgroundColor.hashCode),
            authorAvatarLink.hashCode),
        authorName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleModel')
          ..add('title', title)
          ..add('articleLink', articleLink)
          ..add('description', description)
          ..add('id', id)
          ..add('bookmarkCount', bookmarkCount)
          ..add('commentCount', commentCount)
          ..add('reactionToCounts', reactionToCounts)
          ..add('imageLink', imageLink)
          ..add('imageBackgroundColor', imageBackgroundColor)
          ..add('authorAvatarLink', authorAvatarLink)
          ..add('authorName', authorName))
        .toString();
  }
}

class ArticleModelBuilder
    implements Builder<ArticleModel, ArticleModelBuilder> {
  _$ArticleModel? _$v;

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

  int? _bookmarkCount;
  int? get bookmarkCount => _$this._bookmarkCount;
  set bookmarkCount(int? bookmarkCount) =>
      _$this._bookmarkCount = bookmarkCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  MapBuilder<int, int>? _reactionToCounts;
  MapBuilder<int, int> get reactionToCounts =>
      _$this._reactionToCounts ??= new MapBuilder<int, int>();
  set reactionToCounts(MapBuilder<int, int>? reactionToCounts) =>
      _$this._reactionToCounts = reactionToCounts;

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

  ArticleModelBuilder();

  ArticleModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _articleLink = $v.articleLink;
      _description = $v.description;
      _id = $v.id;
      _bookmarkCount = $v.bookmarkCount;
      _commentCount = $v.commentCount;
      _reactionToCounts = $v.reactionToCounts.toBuilder();
      _imageLink = $v.imageLink;
      _imageBackgroundColor = $v.imageBackgroundColor;
      _authorAvatarLink = $v.authorAvatarLink;
      _authorName = $v.authorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleModel;
  }

  @override
  void update(void Function(ArticleModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleModel build() => _build();

  _$ArticleModel _build() {
    _$ArticleModel _$result;
    try {
      _$result = _$v ??
          new _$ArticleModel._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'ArticleModel', 'title'),
              articleLink: BuiltValueNullFieldError.checkNotNull(
                  articleLink, r'ArticleModel', 'articleLink'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'ArticleModel', 'description'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'ArticleModel', 'id'),
              bookmarkCount: BuiltValueNullFieldError.checkNotNull(
                  bookmarkCount, r'ArticleModel', 'bookmarkCount'),
              commentCount: BuiltValueNullFieldError.checkNotNull(
                  commentCount, r'ArticleModel', 'commentCount'),
              reactionToCounts: reactionToCounts.build(),
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
            r'ArticleModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
