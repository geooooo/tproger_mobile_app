enum Asset {
  eye('assets/eye.svg'),
  bookmark('assets/bookmark.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}