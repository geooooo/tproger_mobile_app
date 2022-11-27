import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:redux/redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_localization_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_sort/articles_sort_list_widget.dart';

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

  var _isTapped = false;

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      
      children: [
        GestureDetector(
          onTap: _onTap,
          child: Container(
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
                SvgPicture.asset(
                  Asset.arrowUp.value,
                  package: Asset.package,
                  width: 16,
                  height: 16,
                  color: const Color.fromRGBO(197, 211, 211, 1),
                ),
              ],
            ),
          ),
        ),
        if (_isTapped) ArticlesSortListWidget(
            onSelect: (type) => _onSelect(type, store),
        ),
      ],
    ),
  );

  void _onTap() => setState(() { _isTapped = !_isTapped; });

  void _onSelect(ArticlesSortType type, Store<AppState> store) {
    setState(() { _isTapped = false; });

    widget.onSelect(type);
  }
}
