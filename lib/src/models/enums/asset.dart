enum Asset {
  eye('assets/eye.svg');

  final String value;

  const Asset(this.value);

  @override
  String toString() => value;
}