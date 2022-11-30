import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/actions/sort_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_sort/articles_sort_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/read_us_telegram_widget.dart';

// TODO: Rework header to scroll full list
// TODO: Add to widgetbook
class ArticleListHeaderWidget extends StatelessWidget {
  const ArticleListHeaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        // Container(
        //   color: Colors.grey,
        //   height: 58,
        //   width: double.infinity,
        // ),
        const ReadUsTelegramButtonWidget(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ArticlesSortWidget(
              type: store.state.articlesSortType,
              onSelect: (type) => _onSelectSortType(type, store),
            ),
            const ArticlesFilterButtonWidget(),
          ],
        ),
        const SizedBox(height: 15),
      ],
    ),
  );

  void _onSelectSortType(ArticlesSortType type, Store<AppState> store) {
    if (type != store.state.articlesSortType) {
      store.dispatch(SortArticlesAction(type));
    }
  }
}
