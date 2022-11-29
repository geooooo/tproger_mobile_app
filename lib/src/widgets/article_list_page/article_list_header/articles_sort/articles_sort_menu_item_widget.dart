import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/services/app_localization_service.dart';

class ArticlesSortMenuItemWidget extends StatelessWidget {
  final _appLocalizationService = GetIt.instance.get<AppLocalizationService>();

  final ArticlesSortType type;

  ArticlesSortMenuItemWidget({
    required this.type,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Text(
      _appLocalizationService.getTextByArticlesSortType(type, context),
      style: store.state.theme.articlesSortMenuItemTextStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ),
  );
}