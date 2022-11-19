import 'package:flutter/material.dart';
import 'package:tproger_mobile_app_widgetbook/services/helper_service.dart';
import 'package:tproger_mobile_app_widgetbook/services/knobs_service.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article/article_widget.dart';

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
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ArticleWidget(
            article: HelperService.createArticleModel(
              isBackgroundImage: KnobsService.isBackgroundImage(context),
              backgroundColor: KnobsService.backgroundColor(context),
              authorName: KnobsService.authorName(context),
              title: KnobsService.title(context),
              description: KnobsService.description(context),
              viewCount: KnobsService.viewCount(context),
              bookmarkCount: KnobsService.bookmarkCount(context),
              commentCount: KnobsService.commentCount(context),
              reactionToCounts: KnobsService.reactionToCounts(context),
            ),
          ),
        ],
      ),
    ),
  ],
);