import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/articles_filter_overlay/articles_filter_overlay_widget.dart';

@singleton
class OverlayService {
  void showArticlesFilters({
    required BuildContext context,
    required void Function() onApplyClick,
    required void Function() onCleanOutClick,
    required void Function() onIsForBeginnerClick,
    required void Function() onCloseClick,
  }) => Overlayment.show<void>(
    OverPanel(
      child: ArticlesFilterOverlayWidget(
        onApplyClick: onApplyClick,
        onCleanOutClick: onCleanOutClick,
        onCloseClick: onCloseClick,
        onIsForBeginnerClick: onIsForBeginnerClick,
      ),
      backgroundSettings: const BackgroundSettings(
        color: Colors.transparent,
      ),
    ),
    context: context,
  );

  Future<void> hide() => Overlayment.dismissLast<void>();
}