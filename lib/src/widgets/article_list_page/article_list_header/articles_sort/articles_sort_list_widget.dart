import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';

class ArticlesSortListWidget extends StatelessWidget {
  final void Function(ArticlesSortType) onSelect;

  const ArticlesSortListWidget({ 
    required this.onSelect,
    super.key,
  });

  final _style = const TextStyle(
    color: Color.fromRGBO(197, 211, 211, 1),
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 24 / 16,
  );

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      border: Border.all(
        width: 1,
        color: const Color.fromRGBO(37, 37, 37, 1),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      color: const Color.fromRGBO(24, 29, 28, 1),
    ),
    child: IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => onSelect(ArticlesSortType.fresh),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              child: Text(
                AppLocalizations.of(context)!.newText,
                style: _style,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onSelect(ArticlesSortType.hot),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              child: Text(
                AppLocalizations.of(context)!.hotText,
                style: _style,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onSelect(ArticlesSortType.topOfWeek),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              child: Text(
                AppLocalizations.of(context)!.topOfWeekText,
                style: _style,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onSelect(ArticlesSortType.topOfMonth),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              child: Text(
                AppLocalizations.of(context)!.topOfMonthText,
                style: _style,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => onSelect(ArticlesSortType.topOfTop),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              child: Text(
                AppLocalizations.of(context)!.topOfTopText, 
                style: _style,
              ),
            ),
          ),      
        ],
      ),
    ),
  );
}
