enum ArticlesSortType {
  fresh('new'),
  hot('hot'),
  topOfWeek('week'),
  topOfMonth('month'),
  topOfTop('ever');

  final String value;

  const ArticlesSortType(this.value);

  @override
  String toString() => value;
}