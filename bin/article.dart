import 'reaction_type.dart';

class Article {
  final String title;
  final String articleLink;
  final String pictureLink;
  final String authorAvatarLink;
  final String authorName;
  final String description;
  final int id;
  int bookmarkCount;
  int commentCount;
  late Map<ReactionType, int> reactions;

  Article({
    required this.title,
    required this.articleLink,
    required this.pictureLink,
    required this.authorAvatarLink,
    required this.authorName,
    required this.description,
    required this.id,
    this.bookmarkCount = 0,
    this.commentCount = 0,
  }) {
    reactions = { for (final type in ReactionType.values) type: 0 };
  }

  @override
  String toString() => 'Article {'
    'title: "$title", '
    'articleLink: "$articleLink", '
    'pictureLink: "$pictureLink", '
    'authorAvatarLink: "$authorAvatarLink", '
    'authorName: "$authorName", '
    'description: "$description", '
    'id: $id, '
    'bookmarkCount: $bookmarkCount, '
    'commentCount: $commentCount, '
    'reactions: $reactions'
  '}';
}