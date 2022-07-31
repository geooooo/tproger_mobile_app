// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Article extends Article {
  @override
  final String title;
  @override
  final String articleLink;
  @override
  final String description;
  @override
  final int id;
  @override
  final BuiltMap<Reaction, int> reactionToCounts;
  @override
  final int bookmarkCount;
  @override
  final int commentCount;
  @override
  final String? imageLink;
  @override
  final String? authorAvatarLink;
  @override
  final String? authorName;

  factory _$Article([void Function(ArticleBuilder)? updates]) =>
      (new ArticleBuilder()..update(updates))._build();

  _$Article._(
      {required this.title,
      required this.articleLink,
      required this.description,
      required this.id,
      required this.reactionToCounts,
      required this.bookmarkCount,
      required this.commentCount,
      this.imageLink,
      this.authorAvatarLink,
      this.authorName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'Article', 'title');
    BuiltValueNullFieldError.checkNotNull(
        articleLink, r'Article', 'articleLink');
    BuiltValueNullFieldError.checkNotNull(
        description, r'Article', 'description');
    BuiltValueNullFieldError.checkNotNull(id, r'Article', 'id');
    BuiltValueNullFieldError.checkNotNull(
        reactionToCounts, r'Article', 'reactionToCounts');
    BuiltValueNullFieldError.checkNotNull(
        bookmarkCount, r'Article', 'bookmarkCount');
    BuiltValueNullFieldError.checkNotNull(
        commentCount, r'Article', 'commentCount');
  }

  @override
  Article rebuild(void Function(ArticleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleBuilder toBuilder() => new ArticleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Article &&
        title == other.title &&
        articleLink == other.articleLink &&
        description == other.description &&
        id == other.id &&
        reactionToCounts == other.reactionToCounts &&
        bookmarkCount == other.bookmarkCount &&
        commentCount == other.commentCount &&
        imageLink == other.imageLink &&
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
                                    $jc($jc(0, title.hashCode),
                                        articleLink.hashCode),
                                    description.hashCode),
                                id.hashCode),
                            reactionToCounts.hashCode),
                        bookmarkCount.hashCode),
                    commentCount.hashCode),
                imageLink.hashCode),
            authorAvatarLink.hashCode),
        authorName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Article')
          ..add('title', title)
          ..add('articleLink', articleLink)
          ..add('description', description)
          ..add('id', id)
          ..add('reactionToCounts', reactionToCounts)
          ..add('bookmarkCount', bookmarkCount)
          ..add('commentCount', commentCount)
          ..add('imageLink', imageLink)
          ..add('authorAvatarLink', authorAvatarLink)
          ..add('authorName', authorName))
        .toString();
  }
}

class ArticleBuilder implements Builder<Article, ArticleBuilder> {
  _$Article? _$v;

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

  MapBuilder<Reaction, int>? _reactionToCounts;
  MapBuilder<Reaction, int> get reactionToCounts =>
      _$this._reactionToCounts ??= new MapBuilder<Reaction, int>();
  set reactionToCounts(MapBuilder<Reaction, int>? reactionToCounts) =>
      _$this._reactionToCounts = reactionToCounts;

  int? _bookmarkCount;
  int? get bookmarkCount => _$this._bookmarkCount;
  set bookmarkCount(int? bookmarkCount) =>
      _$this._bookmarkCount = bookmarkCount;

  int? _commentCount;
  int? get commentCount => _$this._commentCount;
  set commentCount(int? commentCount) => _$this._commentCount = commentCount;

  String? _imageLink;
  String? get imageLink => _$this._imageLink;
  set imageLink(String? imageLink) => _$this._imageLink = imageLink;

  String? _authorAvatarLink;
  String? get authorAvatarLink => _$this._authorAvatarLink;
  set authorAvatarLink(String? authorAvatarLink) =>
      _$this._authorAvatarLink = authorAvatarLink;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  ArticleBuilder();

  ArticleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _articleLink = $v.articleLink;
      _description = $v.description;
      _id = $v.id;
      _reactionToCounts = $v.reactionToCounts.toBuilder();
      _bookmarkCount = $v.bookmarkCount;
      _commentCount = $v.commentCount;
      _imageLink = $v.imageLink;
      _authorAvatarLink = $v.authorAvatarLink;
      _authorName = $v.authorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Article other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Article;
  }

  @override
  void update(void Function(ArticleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Article build() => _build();

  _$Article _build() {
    _$Article _$result;
    try {
      _$result = _$v ??
          new _$Article._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'Article', 'title'),
              articleLink: BuiltValueNullFieldError.checkNotNull(
                  articleLink, r'Article', 'articleLink'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, r'Article', 'description'),
              id: BuiltValueNullFieldError.checkNotNull(id, r'Article', 'id'),
              reactionToCounts: reactionToCounts.build(),
              bookmarkCount: BuiltValueNullFieldError.checkNotNull(
                  bookmarkCount, r'Article', 'bookmarkCount'),
              commentCount: BuiltValueNullFieldError.checkNotNull(
                  commentCount, r'Article', 'commentCount'),
              imageLink: imageLink,
              authorAvatarLink: authorAvatarLink,
              authorName: authorName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reactionToCounts';
        reactionToCounts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Article', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
