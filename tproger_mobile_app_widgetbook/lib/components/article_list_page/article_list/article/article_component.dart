import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/helper_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

WidgetbookComponent buildArticleComponent(BuildContext context) => WidgetbookComponent(
  name: 'Article',
  useCases: [
    WidgetbookUseCase(
      name: 'Icon image', 
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ArticleWidget(
            article: HelperService.createArticleModel(isBackgroundImage: false),
          ),
        ],
      ),
    ),
    WidgetbookUseCase(
      name: 'Background image', 
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ArticleWidget(
            article: HelperService.createArticleModel(isBackgroundImage: true),
          ),
        ],
      ),
    ),
    WidgetbookUseCase(
      name: 'Custom', 
      builder: (context) {
        final angryReactionCount = context.knobs.number(
          label: 'Count of angry reactions',
          initialValue: 0,
        ).toInt();
        final surpirseReactionCount = context.knobs.number(
          label: 'Count of surprise reactions',
          initialValue: 0,
        ).toInt();
        final thinkingReactionCount = context.knobs.number(
          label: 'Count of thinking reactions',
          initialValue: 0,
        ).toInt();
        final laughReactionCount = context.knobs.number(
          label: 'Count of laugh reactions',
          initialValue: 0,
        ).toInt();
        final likeReactionCount = context.knobs.number(
          label: 'Count of like reactions',
          initialValue: 0,
        ).toInt();
        final reactionToCounts = {
          if (angryReactionCount > 0) Reaction.angry: angryReactionCount, 
          if (surpirseReactionCount > 0) Reaction.surprise: surpirseReactionCount, 
          if (thinkingReactionCount > 0) Reaction.thinking: thinkingReactionCount, 
          if (laughReactionCount > 0) Reaction.laugh: laughReactionCount, 
          if (likeReactionCount > 0) Reaction.like: likeReactionCount, 
        };

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ArticleWidget(
              article: HelperService.createArticleModel(
                isBackgroundImage: context.knobs.boolean(
                  label: 'Has background image if true else icon',
                  initialValue: false,
                ),
                backgroundColor: context.knobs.text(
                  initialValue: '#000000',
                  label: 'Color of a background',
                  description: 'Only if isBackgroundImage is false'
                ),
                authorName: context.knobs.text(
                  label: 'Name',
                  initialValue: 'Author Name',
                ),
                title: context.knobs.text(
                  label: 'Title',
                  initialValue: 'Title of an article',
                ),
                description: context.knobs.text(
                  label: 'Description',
                  initialValue: 'Description of an article',
                ),
                viewCount: context.knobs.number(
                  label: 'Count of views',
                  initialValue: 0,
                ).toInt(),
                bookmarkCount: context.knobs.number(
                  label: 'Count of bookmarks',
                  initialValue: 0,
                ).toInt(),
                commentCount: context.knobs.number(
                  label: 'Count of comments',
                  initialValue: 0,
                ).toInt(),
                reactionToCounts: reactionToCounts,
              ),
            ),
          ],
        );
      },
    ),
  ],
);