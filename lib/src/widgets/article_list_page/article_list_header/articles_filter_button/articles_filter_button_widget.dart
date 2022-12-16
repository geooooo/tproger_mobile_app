import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/typedefs.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter_button/active_indicator_widget.dart';

class ArticlesFilterButtonWidget extends StatefulWidget {
  final bool isFiltersEnabled;
  final VoidFunction onClick;

  const ArticlesFilterButtonWidget({ 
    required this.isFiltersEnabled,
    required this.onClick,
    super.key,
  });

  @override
  State<ArticlesFilterButtonWidget> createState() => _ArticlesFilterButtonWidgetState();
}

class _ArticlesFilterButtonWidgetState extends State<ArticlesFilterButtonWidget> {
  static const _duration = Duration(milliseconds: 250);

  var _isTapped = false;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTapDown: _onTapDown,
    onTapUp: _onTapUp,
    onTapCancel: _onTapCancel,
    child: Container(
      padding: AppSize.articlesFilterButtonPadding,
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.articlesFilterButtonBorderSize,
          color: Theme.of(context).extension<AppTheme>()!.articlesFilterButtonBorderColor,
        ),
        borderRadius: AppSize.articlesFilterButtonBorderRadius,
        color: Theme.of(context).extension<AppTheme>()!.articlesFilterButtonColor,
      ),
      child: AnimatedDefaultTextStyle(
        duration: _duration,
        curve: Curves.ease,
        style: _isTapped
          ? Theme.of(context).extension<AppTheme>()!.articlesFilterButtonTextStyle
          : Theme.of(context).extension<AppTheme>()!.articlesFilterButtonActiveTextStyle,
        child: Stack(
          children: [
            Text(AppLocalizations.of(context)!.filterText),
            if (widget.isFiltersEnabled) const Positioned(
              top: 2,
              left: 5,
              child: ActiveIndicatorWidget(),
            ),
          ],
        ),
      ),
    ),
  );

  void _onTapDown(TapDownDetails details) {
    setState(() { _isTapped = true; });
  }

  void _onTapUp(TapUpDetails details) {
    widget.onClick();
    
    setState(() { _isTapped = false; });
  }

  void _onTapCancel() {
    setState(() { _isTapped = false; });
  }
}