import 'package:equatable/equatable.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_company_author.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_user_author.dart';
import 'package:tproger_mobile_app/src/models/enums/article_author_type.dart';

abstract class ArticleAuthor extends Equatable {
  final String name;
  final String avatarLink;

  const ArticleAuthor({
    required this.name,
    required this.avatarLink,
  });

  factory ArticleAuthor.from({
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

  @override
  List<Object> get props => [name, avatarLink];
}
