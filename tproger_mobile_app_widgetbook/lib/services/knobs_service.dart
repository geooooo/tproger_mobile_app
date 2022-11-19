import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

class KnobsService {
  static String imageLink(BuildContext context, String defaultValue) => context.knobs.text(
    initialValue: defaultValue,
    label: 'Network link to an image',
  );

  static bool isBackgroundImage(BuildContext context) => context.knobs.boolean(
    label: 'Has background image if true else icon',
    initialValue: false,
  );

  static String backgroundColor(BuildContext context) => context.knobs.text(
    initialValue: '#000000',
    label: 'Color of a background',
    description: 'Only if isBackgroundImage is false'
  );

  static String authorName(BuildContext context) => context.knobs.text(
    label: 'Name',
    initialValue: 'Author Name',
  );

  static String title(BuildContext context) => context.knobs.text(
    label: 'Title',
    initialValue: 'Title of an article',
  );

  static String description(BuildContext context) => context.knobs.text(
    label: 'Description',
    initialValue: 'Description of an article',
  );

  static int viewCount(BuildContext context) => context.knobs.number(
    label: 'Count of views',
    initialValue: 0,
  ).toInt();

  static int bookmarkCount(BuildContext context) => context.knobs.number(
    label: 'Count of bookmarks',
    initialValue: 0,
  ).toInt();

  static int commentCount(BuildContext context) => context.knobs.number(
    label: 'Count of comments',
    initialValue: 0,
  ).toInt();

  static int countOfArticles(BuildContext context) => context.knobs.number(
    label: 'Count of articles',
    initialValue: 2,
  ).toInt();

  static Map<Reaction, int> reactionToCounts(BuildContext context) {
    final angryReactionCount = KnobsService._angryReactionCount(context);
    final surpirseReactionCount = KnobsService._surpirseReactionCount(context);
    final thinkingReactionCount = KnobsService._thinkingReactionCount(context);
    final laughReactionCount = KnobsService._laughReactionCount(context);
    final likeReactionCount = KnobsService._likeReactionCount(context);

    return {
      if (angryReactionCount > 0) Reaction.angry: angryReactionCount, 
      if (surpirseReactionCount > 0) Reaction.surprise: surpirseReactionCount, 
      if (thinkingReactionCount > 0) Reaction.thinking: thinkingReactionCount, 
      if (laughReactionCount > 0) Reaction.laugh: laughReactionCount, 
      if (likeReactionCount > 0) Reaction.like: likeReactionCount, 
    };
  }

  static int _angryReactionCount(BuildContext context) => context.knobs.number(
    label: 'Count of angry reactions',
    initialValue: 0,
  ).toInt();

  static int _surpirseReactionCount(BuildContext context) => context.knobs.number(
    label: 'Count of surprise reactions',
    initialValue: 0,
  ).toInt();
  
  static int _thinkingReactionCount(BuildContext context) => context.knobs.number(
    label: 'Count of thinking reactions',
    initialValue: 0,
  ).toInt();
  
  static int _laughReactionCount(BuildContext context) => context.knobs.number(
    label: 'Count of laugh reactions',
    initialValue: 0,
  ).toInt();
  
  static int _likeReactionCount(BuildContext context) => context.knobs.number(
    label: 'Count of like reactions',
    initialValue: 0,
  ).toInt();
}