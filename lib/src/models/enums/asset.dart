enum Asset {
  eye('lib/assets/images/eye.svg'),
  bookmark('lib/assets/images/bookmark.svg'),
  comment('lib/assets/images/comment.svg'),
  angry('lib/assets/images/angry.svg'),
  laugh('lib/assets/images/laugh.svg'),
  think('lib/assets/images/think.svg'),
  like('lib/assets/images/like.svg'),
  surprise('lib/assets/images/surprise.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}