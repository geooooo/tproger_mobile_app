// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_company_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleCompanyAuthor extends ArticleCompanyAuthor {
  @override
  final String name;
  @override
  final String avatarLink;

  factory _$ArticleCompanyAuthor(
          [void Function(ArticleCompanyAuthorBuilder)? updates]) =>
      (new ArticleCompanyAuthorBuilder()..update(updates))._build();

  _$ArticleCompanyAuthor._({required this.name, required this.avatarLink})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ArticleCompanyAuthor', 'name');
    BuiltValueNullFieldError.checkNotNull(
        avatarLink, r'ArticleCompanyAuthor', 'avatarLink');
  }

  @override
  ArticleCompanyAuthor rebuild(
          void Function(ArticleCompanyAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleCompanyAuthorBuilder toBuilder() =>
      new ArticleCompanyAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleCompanyAuthor &&
        name == other.name &&
        avatarLink == other.avatarLink;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), avatarLink.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleCompanyAuthor')
          ..add('name', name)
          ..add('avatarLink', avatarLink))
        .toString();
  }
}

class ArticleCompanyAuthorBuilder
    implements Builder<ArticleCompanyAuthor, ArticleCompanyAuthorBuilder> {
  _$ArticleCompanyAuthor? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _avatarLink;
  String? get avatarLink => _$this._avatarLink;
  set avatarLink(String? avatarLink) => _$this._avatarLink = avatarLink;

  ArticleCompanyAuthorBuilder();

  ArticleCompanyAuthorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _avatarLink = $v.avatarLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleCompanyAuthor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticleCompanyAuthor;
  }

  @override
  void update(void Function(ArticleCompanyAuthorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleCompanyAuthor build() => _build();

  _$ArticleCompanyAuthor _build() {
    final _$result = _$v ??
        new _$ArticleCompanyAuthor._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ArticleCompanyAuthor', 'name'),
            avatarLink: BuiltValueNullFieldError.checkNotNull(
                avatarLink, r'ArticleCompanyAuthor', 'avatarLink'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
