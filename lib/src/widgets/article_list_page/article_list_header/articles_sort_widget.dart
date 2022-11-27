import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_localization_service.dart';

class ArticlesSortWidget extends StatefulWidget {
  final ArticlesSortType type;
  final void Function(ArticlesSortType) onSelect;

  const ArticlesSortWidget({
    required this.type,
    required this.onSelect,
    super.key,
  });

  @override
  State<ArticlesSortWidget> createState() => _ArticlesSortWidgetState();
}

class _ArticlesSortWidgetState extends State<ArticlesSortWidget> {
  final _appLocalizationService = GetIt.instance.get<AppLocalizationService>();

  final _style = const TextStyle(
    color: Color.fromRGBO(197, 211, 211, 1),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  var _isOpened = false;

  @override
  Widget build(BuildContext context) => DropdownButtonHideUnderline(
    child: DropdownButton2<ArticlesSortType>(
      value: ArticlesSortType.fresh,
      onChanged: _onChanged,
      onMenuStateChange: _onMenuStateChange,
      dropdownElevation: 0,
      buttonElevation: 0,
      itemSplashColor: Colors.transparent,
      itemHighlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      buttonSplashColor: Colors.transparent,
      buttonHighlightColor: Colors.transparent,
      dropdownWidth: 210,
      itemPadding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 16,
      ),
      dropdownDecoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color.fromRGBO(37, 37, 37, 1),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: const Color.fromRGBO(24, 29, 28, 1),
      ),
      dropdownPadding: const EdgeInsets.symmetric(vertical: 8),
      customButton: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(37, 37, 37, 1),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: const Color.fromRGBO(24, 29, 28, 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _appLocalizationService.getTextByArticlesSortType(widget.type, context),
              style: const TextStyle(
                color: Color.fromRGBO(197, 211, 211, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 6),
            AnimatedRotation(
              duration: const Duration(milliseconds: 350),
              turns: _isOpened? 0.5 : 0,
              curve: Curves.ease,
              child: SvgPicture.asset(
                Asset.arrowUp.value,
                package: Asset.package,
                width: 16,
                height: 16,
                color: const Color.fromRGBO(197, 211, 211, 1),
              ),
            ),
          ],
        ),
      ),
      items: [
        DropdownMenuItem(
          value: ArticlesSortType.fresh,
          child: Text(
            AppLocalizations.of(context)!.newText,
            style: _style,
          ),
        ),
        DropdownMenuItem(
          value: ArticlesSortType.hot,
          child: Text(
            AppLocalizations.of(context)!.hotText,
            style: _style,
          ),
        ),
        DropdownMenuItem(
          value: ArticlesSortType.topOfWeek,
          child: Text(
            AppLocalizations.of(context)!.topOfWeekText,
            style: _style,
          ),
        ),
        DropdownMenuItem(
          value: ArticlesSortType.topOfMonth,
          child: Text(
            AppLocalizations.of(context)!.topOfMonthText,
            style: _style,
          ),
        ),
        DropdownMenuItem(
          value: ArticlesSortType.topOfTop,
          child: Text(
            AppLocalizations.of(context)!.topOfTopText,
            style: _style,
          ),
        ),
      ],
    ),
  );

  void _onChanged(ArticlesSortType? type) => widget.onSelect(type!);

  void _onMenuStateChange(bool isOpened) =>
    setState(() { _isOpened = isOpened; });
}