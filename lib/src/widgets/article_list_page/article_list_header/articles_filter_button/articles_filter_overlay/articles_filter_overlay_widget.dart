import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/close_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/header/header_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/rubric_wdget.dart';

class ArticlesFilterOverlayWidget extends StatelessWidget {
  final VoidFunction onApplyClick;
  final VoidFunction onCleanOutClick;
  final VoidFunction onIsForBeginnerClick;
  final VoidFunction onCloseClick;

  const ArticlesFilterOverlayWidget({
    required this.onApplyClick,
    required this.onCleanOutClick,
    required this.onIsForBeginnerClick,
    required this.onCloseClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => DecoratedBox(
      decoration: BoxDecoration(
        color: store.state.theme.articlesFilterOverlayColor,
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              color: store.state.theme.articlesFilterOverlayColor,
              padding: AppSize.articlesFilterOverlayPadding,
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeaderWidget(
                      onApplyClick: onApplyClick,
                      onCleanOutClick: onCleanOutClick,
                    ),
                    const SizedBox(height: AppSize.articlesFilterOverlayHeaderAndRubricSeparatorSize),
                    RubricWidget(
                      isForBeginner: store.state.filterData.isForBeginner,
                      onIsForBeginnerClick: onIsForBeginnerClick,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CloseButtonWidget(
                onClick: onCloseClick,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}