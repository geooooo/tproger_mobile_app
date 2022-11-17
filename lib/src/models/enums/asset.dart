enum Asset {
  eye('assets/images/eye.svg'),
  bookmark('assets/images/bookmark.svg'),
  comment('assets/images/comment.svg'),
  angry('assets/images/angry.svg'),
  laugh('assets/images/laugh.svg'),
  think('assets/images/think.svg'),
  like('assets/images/like.svg'),
  surprise('assets/images/surprise.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}