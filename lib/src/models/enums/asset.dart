enum Asset {
  eye('assets/eye.svg'),
  bookmark('assets/bookmark.svg'),
  comment('assets/comment.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}