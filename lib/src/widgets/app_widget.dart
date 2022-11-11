import 'package:flutter/material.dart';
import 'package:flutter_custom_theme/flutter_custom_theme.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state_change_notifier.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:tproger_mobile_app/src/services/article_list_service.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_page_loader_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({ super.key });

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _articleListService = GetIt.instance.get<ArticleListService>();

  @override
  Future<void> dispose() async {
    await GetIt.instance.reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => CustomThemes(
    data: const [
      CustomThemeDataSet(
        data: AppTheme.light(),
        dataDark: AppTheme.dark(),
      ),
    ],
    child: ChangeNotifierProvider(
      create: (context) => AppStateChangeNotifier(_articleListService),
      child: const ArticleListPageLoaderWidget(),
    )
  );
}
