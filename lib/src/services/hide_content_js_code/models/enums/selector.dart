enum Selector {
  header('.container-header'),
  footerMeta('.footer-meta'),
  comments('#tproger-comments'),
  recommendedPosts('#tp-recommended-posts'),
  postWidget('#post-widget-container'),
  toolIcons('.post-tool-block');

  final String value;

  const Selector(this.value);

  @override
  String toString() => value;
}