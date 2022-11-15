enum Asset {
  eye('assets/images/eye.svg'),
  bookmark('assets/images/bookmark.svg'),
  comment('assets/images/comment.svg'),
  like('assets/images/like.svg'),
  surprise('assets/images/surprise.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}