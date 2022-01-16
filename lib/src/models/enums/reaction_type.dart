class ReactionType {
  final int _value;

  static const angry = ReactionType._(1);
  static const surprise = ReactionType._(2);
  static const think = ReactionType._(3);
  static const laugh = ReactionType._(4);
  static const like = ReactionType._(5);

  static const values = [
    angry,
    surprise,
    think,
    laugh,
    like,
  ];

  const ReactionType._(this._value);

  factory ReactionType.fromId(int value) =>
    values.firstWhere((element) => element._value == value);
}