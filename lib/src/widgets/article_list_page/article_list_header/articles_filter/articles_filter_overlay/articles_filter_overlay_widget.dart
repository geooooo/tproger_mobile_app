import 'package:flutter/material.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/header/close_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/header/header_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/rubric_wdget.dart';

class ArticlesFilterOverlayWidget extends StatelessWidget {
  const ArticlesFilterOverlayWidget({ super.key });

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      color: AppColor.blackColor1,
    ),
    child: SafeArea(
      child: Stack(
        children: [
          Container(
            color: AppColor.blackColor1,
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget(),
                  const SizedBox(height: 20),
                  RubricWidget(
                    isForBeginner: false,
                    isForBeginnerClick: () => print('+'),
                  ),
                  const SizedBox(height: 40),
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
  );

  void _onCloseClick() => Overlayment.dismissLast();
}