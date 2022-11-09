import 'package:flutter/widgets.dart';
import 'package:flutter_custom_theme/flutter_custom_theme.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_list_page_widget.dart';

// TODO: State manager
class AppWidget extends StatefulWidget {
  const AppWidget({ super.key });

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Future<void> dispose() async {
    await GetIt.instance.reset();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => CustomThemes(
    data: [
      CustomThemeDataSet(
        data: AppTheme.dark(),
        dataDark: AppTheme.dark(),
      ),
    ],
    child: const ArticleListPageWidget(),
  );
}
