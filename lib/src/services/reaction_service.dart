import 'package:injectable/injectable.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

@singleton
class ReactionService {
  int commonCount(Map<Reaction, int> reactionToCounts) => reactionToCounts.isEmpty 
      ? 0 
      : reactionToCounts.values.reduce((x, y) => x + y);

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