enum Handler {
  host('tproger.ru'),
  articlesCommentCounts('/wp-node/comments/count/posts'),
  articlesBookmarkCounts('/wp-node/bookmark/posts'),
  articleReactions('/wp-node/reaction/posts'),
  initial('/');

  final String value;

  const Handler(this.value);

  @override
  String toString() => value;
}
