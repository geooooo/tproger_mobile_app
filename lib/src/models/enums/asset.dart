enum Asset {
  eye('assets/images/eye.svg'),
  bookmark('assets/images/bookmark.svg'),
  comment('assets/images/comment.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}