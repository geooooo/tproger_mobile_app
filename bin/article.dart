import 'reaction_type.dart';

class Article {
  final String title;
  final String link;
  final String description;
  final int id;
  final int bookmarkCount;
  final int commentCount;
  late final Map<ReactionType, int> reactions;

  Article({
    required this.title,
    required this.link,
    required this.description,
    required this.id,
    this.bookmarkCount = 0,
    this.commentCount = 0,
    Map<ReactionType, int>? reactions,
  }) {
    this.reactions = reactions ?? { for (final type in ReactionType.values) type: 0 };
  }

  @override
  String toString() => 'Article {'
    'title: "$title", '
    'link: "$link", '
    'description: "$description", '
    'id: $id, '
    'bookmarkCount: $bookmarkCount, '
    'commentCount: $commentCount, '
    'reactions: $reactions'
  '}';
}