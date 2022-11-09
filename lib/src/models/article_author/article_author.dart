import 'package:tproger_mobile_app/src/models/article_author/article_company_author.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/models/enums/article_author_type.dart';

abstract class ArticleAuthor {
  String get name;
  String get avatarLink;

  factory ArticleAuthor({
    required String name,
    required String avatarLink,
    required ArticleAuthorType type,
  }) {
    switch (type) {
      case ArticleAuthorType.user:
        return ArticleUserAuthor(
          name: name,
          avatarLink: avatarLink,
        );
      case ArticleAuthorType.company:
        return ArticleCompanyAuthor(
          name: name,
          avatarLink: avatarLink,
        );
    }
  }
}
