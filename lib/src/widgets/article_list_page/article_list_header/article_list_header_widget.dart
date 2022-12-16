import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_state/filter_data.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_sort/articles_sort_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/read_us_telegram_widget.dart';

class ArticleListHeaderWidget extends StatelessWidget {
  final FilterData filterData;
  final ArticlesSortType articlesSortType;
  final VoidFunction onReadUsTelegramClick;
  final VoidFunctionArticlesSortType onSelectSortType;
  final VoidFunction onFilterClick;

  const ArticleListHeaderWidget({ 
    required this.filterData,
    required this.articlesSortType,
    required this.onReadUsTelegramClick,
    required this.onSelectSortType,
    required this.onFilterClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: [
      // Container(
      //   color: Colors.grey,
      //   height: 58,
      //   width: double.infinity,
      // ),
      ReadUsTelegramButtonWidget(
        onClick: onReadUsTelegramClick,
      ),
      const SizedBox(height: 15),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ArticlesSortWidget(
            type: articlesSortType,
            onSelect: onSelectSortType,
          ),
          ArticlesFilterButtonWidget(
            isFiltersEnabled: filterData.isEnabled,
            onClick: onFilterClick,
          ),
        ],
      ),
      const SizedBox(height: 15),
    ],
  );
}
