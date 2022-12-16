import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/actions/load_articles_action/load_articles_action.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/view_models/article_list_page_view_model.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/article_list_header_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_loader_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_list_widget.dart';
import 'package:tproger_mobile_app/src/widgets/common/page_widget.dart';

class ArticleListPageWidget extends PageWidget {
  const ArticleListPageWidget({ super.key });

  @override
  Widget buildContent(BuildContext context) => StoreConnector<AppState, ArticleListPageViewModel>(
    distinct: true,
    converter: (store) => ArticleListPageViewModel(
      isArticlesLoaded: store.state.isArticlesLoaded,
      isArticlesFullLoaded: store.state.isArticlesFullLoaded,
      articlesSortType: store.state.articlesSortType,
      filterData: store.state.filterData,
      articlesPageNumber: store.state.articlesPageNumber,
      articles: store.state.articles.toList(),
      dispatch: store.dispatch,
    ),
    builder: (context, viewModel) {      
      if (!viewModel.isArticlesLoaded) {
        viewModel.dispatch(LoadArticlesAction(
          sortType: viewModel.articlesSortType,
          filterData: viewModel.filterData,
        ));

        return const ArticleListLoaderWidget();
      }

      return Column(
        children: [
          const ArticleListHeaderWidget(),
          Expanded(
            child: ArticleListWidget(
              isFullLoaded: viewModel.isArticlesFullLoaded,
              articles: viewModel.articles,
              articlesPageNumber: viewModel.articlesPageNumber,
            ),
          ),
        ],      
      );
    },
  );
}
