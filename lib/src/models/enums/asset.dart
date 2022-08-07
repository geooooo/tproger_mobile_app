enum Asset {
  eye('assets/eye.svg'),
  defaultAvatar('default_avatar.png');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}