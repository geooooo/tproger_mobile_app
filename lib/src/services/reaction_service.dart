import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

@singleton
class ReactionService {
  int commonCount(Map<Reaction, int> reactionToCounts) => 
    reactionToCounts.values.reduce((x, y) => x + y);

  List<Reaction> sortReactions(Map<Reaction, int> reactionToCounts) {
    final notEmptyEntries = reactionToCounts
      .entries
      .where((entry) => entry.value > 0)
      .toList();

    notEmptyEntries.sort((entry1, entry2) => entry1.value - entry2.value);
    final sortedReactions = notEmptyEntries.map((entry) => entry.key);

    return sortedReactions.toList();
  }

  Asset getIconByReaction(Reaction reaction) {
    switch (reaction) {
      case Reaction.like:
        return Asset.like;
      case Reaction.surprise:
        return Asset.surprise;
      case Reaction.angry:
        return Asset.angry;
      case Reaction.laugh:
        return Asset.laugh;
      case Reaction.thinking:
        return Asset.think;
    }
  }
}