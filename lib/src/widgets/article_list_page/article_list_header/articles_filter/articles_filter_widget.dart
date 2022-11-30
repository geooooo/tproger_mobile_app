import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:overlayment/overlayment.dart';
import 'package:tproger_mobile_app/src/models/app_color.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/articles_filter_overlay_widget.dart';

class ArticlesFilterWidget extends StatefulWidget {
  const ArticlesFilterWidget({ super.key });

  @override
  State<ArticlesFilterWidget> createState() => _ArticlesFilterWidgetState();
}

class _ArticlesFilterWidgetState extends State<ArticlesFilterWidget> {
  var _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 19,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColor.blackColor2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: AppColor.blackColor1,
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 250),
          curve: Curves.ease,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: _isTapped? AppColor.grayColor2 : AppColor.grayColor3,
          ),
          child: const Text('Фильтр'),
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    setState(() { _isTapped = true; });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() { _isTapped = false; });

    Overlayment.show(
      OverPanel(
        child: const ArticlesFilterOverlayWidget(),
        backgroundSettings: const BackgroundSettings(
          color: Colors.transparent,
        ),
      ),
      context: context,
    );
  }

  void _onTapCancel() {
    setState(() { _isTapped = false; });
  }
}