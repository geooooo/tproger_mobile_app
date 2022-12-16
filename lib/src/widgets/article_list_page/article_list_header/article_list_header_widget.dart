import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/actions/apply_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/clear_filters_action.dart';
import 'package:tproger_mobile_app/src/models/actions/is_for_beginner_filter_change_action.dart';
import 'package:tproger_mobile_app/src/models/actions/sort_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/view_models/article_list_header_view_model.dart';
import 'package:tproger_mobile_app/src/services/overlay_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_sort/articles_sort_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/read_us_telegram_widget.dart';

class ArticleListHeaderWidget extends StatelessWidget {
  static final _overlayService = GetIt.instance.get<OverlayService>();

  const ArticleListHeaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => Column(
    children: [
      // Container(
      //   color: Colors.grey,
      //   height: 58,
      //   width: double.infinity,
      // ),
      const ReadUsTelegramButtonWidget(),
      const SizedBox(height: 15),
      StoreConnector<AppState, ArticleListHeaderViewModel>(
        distinct: true,
        converter: (store) => ArticleListHeaderViewModel(
          dispatch: store.dispatch,
          filterData: store.state.filterData,
          articlesSortType: store.state.articlesSortType,
        ),
        builder: (context, viewModel) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ArticlesSortWidget(
              type: viewModel.articlesSortType,
              onSelect: (type) => _onSelectSortType(type, viewModel),
            ),
            ArticlesFilterButtonWidget(
              isFiltersEnabled: viewModel.filterData.isEnabled,
              onClick: () => _onFilterButtonClick(viewModel, context),
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
    ],
  );

  void _onSelectSortType(ArticlesSortType selectedType, ArticleListHeaderViewModel viewModel) {
    if (selectedType != viewModel.articlesSortType) {
      viewModel.dispatch(SortArticlesAction(
        sortType: viewModel.articlesSortType,
        filterData: viewModel.filterData,
      ));
    }
  }

  void _onFilterButtonClick(ArticleListHeaderViewModel viewModel, BuildContext context) =>
    _overlayService.showArticlesFilters(
      context: context,
      onApplyClick: () => _onApplyClick(viewModel),
      onCleanOutClick: () => _onCleanOutClick(viewModel), 
      onIsForBeginnerClick: () => _onIsForBeginnerClick(viewModel), 
      onCloseClick: _onCloseClick, 
    );

  Future<void> _onApplyClick(ArticleListHeaderViewModel viewModel) async {
    await _overlayService.hide();
    viewModel.dispatch(ApplyFiltersAction(
      filterData: viewModel.filterData,
      sortType: viewModel.articlesSortType,
    )); 
  }

  Future<void> _onCleanOutClick(ArticleListHeaderViewModel viewModel) async {
    await _overlayService.hide();
    viewModel.dispatch(ClearFiltersAction(viewModel.articlesSortType)); 
  }

  void _onIsForBeginnerClick(ArticleListHeaderViewModel viewModel) => 
    viewModel.dispatch(const IsForBeginnerFilterChangeAction()); 

  void _onCloseClick() => _overlayService.hide();
}
