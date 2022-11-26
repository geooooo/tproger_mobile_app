import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_end/sleeping_cat_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_end/telegram_link_widget.dart';

class ArticleListEndWidget extends StatelessWidget {
  const ArticleListEndWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: const [
        SleepingCatWidget(),
        SizedBox(height: AppSize.articleListEndWidgetSleepingCatAndTelegramLinkSeparatorSize),
        TelegramLinkWidget(),
        SizedBox(height: AppSize.articleListEndAfterTelegramLinkSeparatorSize),
      ],
    ),
  );
}
