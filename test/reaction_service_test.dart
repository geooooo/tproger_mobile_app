@TestOn('vm')

import 'package:test/test.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';
import 'package:tproger_mobile_app/src/services/reaction_service.dart';

void main() {
  final reactionService = ReactionService();

  test('Get icon by reaction', () {
    final likeIcon = reactionService.getIconByReaction(Reaction.like);
    final angryIcon = reactionService.getIconByReaction(Reaction.angry);
    final thinkingIcon = reactionService.getIconByReaction(Reaction.thinking);
    final laughIcon = reactionService.getIconByReaction(Reaction.laugh);
    final surpriseIcon = reactionService.getIconByReaction(Reaction.surprise);

    expect(Asset.like, equals(likeIcon));
    expect(Asset.angry, equals(angryIcon));
    expect(Asset.think, equals(thinkingIcon));
    expect(Asset.laugh, equals(laughIcon));
    expect(Asset.surprise, equals(surpriseIcon));
  });

  test('Get icon by reaction', () {
    int count;

    count = reactionService.commonCount({
      Reaction.like: 0,
      Reaction.angry: 0,
    });
    expect(0, equals(count));

    count = reactionService.commonCount({});
    expect(0, equals(count));

    count = reactionService.commonCount({
      Reaction.like: 1,
    });
    expect(1, equals(count));

    count = reactionService.commonCount({
      Reaction.thinking: 3,
      Reaction.like: 2,
      Reaction.laugh: 1,
    });
    expect(6, equals(count));
  });
}