import 'package:equatable/equatable.dart';
import 'package:tproger_mobile_app/src/models/article_author/article_author.dart';
import 'package:tproger_mobile_app/src/models/article_image/article_image.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

class ArticleModel extends Equatable {
  final String title;
  final String articleLink;
  final String description;
  final int id;
  final int bookmarkCount;
  final int viewCount;
  final int commentCount;
  final Map<Reaction, int> reactionToCounts;
  final ArticleImage? image;
  final ArticleAuthor? author;

  const ArticleModel({
    required this.title,
    required this.articleLink,
    required this.description,
    required this.id,
    required this.bookmarkCount,
    required this.viewCount,
    required this.commentCount,
    required this.reactionToCounts,
    this.image,
    this.author,
  });

  @override
  List<Object?> get props => [
    title,
    articleLink,
    description,
    id,
    bookmarkCount,
    viewCount,
    commentCount,
    reactionToCounts,
    image,
    author,
  ];
}