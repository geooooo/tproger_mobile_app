enum ApiUrl {
  articlesCommentCounts('/wp-node/comments/count/posts'),
  articlesBookmarkCounts('/wp-node/bookmark/posts'),
  articlesViewCounts('/wp-node/views/posts'),
  articleReactions('/wp-node/reaction/posts'),
  initial('/');

  final String value;

  const ApiUrl(this.value);

  @override
  String toString() => value;
}
