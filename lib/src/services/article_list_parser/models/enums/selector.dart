enum Selector {
  authorName1('.user-miniature__username'),
  authorName2('.company-miniature__name'),
  description('.article__excerpt.article__excerpt--icon'),
  image1('.article__icon-image'),
  image2('.article__background-image'),
  imageBackgroundColor('.article__background-icon-image'),
  authorImage('.article__container-author'),
  title('.article__link'),
  article('.main__posts-wrapper article');

  final String value;

  const Selector(this.value);

  @override
  String toString() => value;
}
