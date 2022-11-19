enum Asset {
  eye('images/eye.svg'),
  bookmark('images/bookmark.svg'),
  comment('images/comment.svg'),
  angry('images/angry.svg'),
  laugh('images/laugh.svg'),
  think('images/think.svg'),
  like('images/like.svg'),
  surprise('images/surprise.svg');

  static const package = 'tproger_mobile_app_assets';

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}