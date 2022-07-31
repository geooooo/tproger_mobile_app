enum Method {
  get('get'),
  post('post');

  final String value;

  const Method(this.value);

  @override
  String toString() => value;
}
