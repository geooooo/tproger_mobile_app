// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_user_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleUserAuthor extends ArticleUserAuthor {
  @override
  final String name;
  @override
  final String avatarLink;

  factory _$ArticleUserAuthor(
          [void Function(ArticleUserAuthorBuilder)? updates]) =>
      (new ArticleUserAuthorBuilder()..update(updates))._build();

  _$ArticleUserAuthor._({required this.name, required this.avatarLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'ArticleUserAuthor', 'name');
    BuiltValueNullFieldError.checkNotNull(
        avatarLink, r'ArticleUserAuthor', 'avatarLink');
  }

  @override
  ArticleUserAuthor rebuild(void Function(ArticleUserAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleUserAuthorBuilder toBuilder() =>
      new ArticleUserAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleUserAuthor &&
        name == other.name &&
        avatarLink == other.avatarLink;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), avatarLink.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleUserAuthor')
          ..add('name', name)
          ..add('avatarLink', avatarLink))
        .toString();
  }
}

class ArticleUserAuthorBuilder
    implements Builder<ArticleUserAuthor, ArticleUserAuthorBuilder> {
  _$ArticleUserAuthor? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatarLink;
  String? get avatarLink => _$this._avatarLink;
  set avatarLink(String? avatarLink) => _$this._avatarLink = avatarLink;

  ArticleUserAuthorBuilder();

  ArticleUserAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _avatarLink = $v.avatarLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleUserAuthor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleUserAuthor;
  }

  @override
  void update(void Function(ArticleUserAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleUserAuthor build() => _build();

  _$ArticleUserAuthor _build() {
    final _$result = _$v ??
        new _$ArticleUserAuthor._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ArticleUserAuthor', 'name'),
            avatarLink: BuiltValueNullFieldError.checkNotNull(
                avatarLink, r'ArticleUserAuthor', 'avatarLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
