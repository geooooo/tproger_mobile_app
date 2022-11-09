import 'package:built_value/built_value.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_author.dart';

part 'article_company_author.g.dart';

abstract class ArticleCompanyAuthor implements ArticleAuthor, Built<ArticleCompanyAuthor, ArticleCompanyAuthorBuilder> {  
  const ArticleCompanyAuthor._();

  factory ArticleCompanyAuthor({
    required String name,
    required String avatarLink,
  }) => _$ArticleCompanyAuthor((builder) => builder
    ..name = name
    ..avatarLink = avatarLink
  );
}
