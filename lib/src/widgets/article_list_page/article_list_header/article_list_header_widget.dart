import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/read_us_telegram_widget.dart';

// TODO: Rework header to scroll full list
// TODO: Add to widgetbook
class ArticleListHeaderWidget extends StatelessWidget {
  const ArticleListHeaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => Column(
    children: const [
      ReadUsTelegramButtonWidget()
    ],
  );
}
