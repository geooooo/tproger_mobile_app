import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/header/close_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/header/header_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/rubric_wdget.dart';

class ArticlesFilterOverlayWidget extends StatelessWidget {
  const ArticlesFilterOverlayWidget({ super.key });

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
                    const HeaderWidget(),
                    const SizedBox(height: AppSize.articlesFilterOverlayHeaderAndRubricSeparatorSize),
                    RubricWidget(
                      isForBeginner: false,
                      isForBeginnerClick: () => print('+'),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: CloseButtonWidget(
                onClick: _onCloseClick,
              ),
            ),
          ],
        ),
      ),
    ),
  );

  void _onCloseClick() => Overlayment.dismissLast();
}