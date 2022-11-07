import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/parsed_article/article_author/article_author.dart';

part 'article_user_author.g.dart';

abstract class ArticleUserAuthor implements ArticleAuthor, Built<ArticleUserAuthor, ArticleUserAuthorBuilder> {
  const ArticleUserAuthor._();
  
  factory ArticleUserAuthor({
    required String name,
    String? avatarLink,
  }) => _$ArticleUserAuthor((builder) => builder
    ..name = name
    ..avatarLink = avatarLink ?? Asset.defaultAvatar.value
  );
}
