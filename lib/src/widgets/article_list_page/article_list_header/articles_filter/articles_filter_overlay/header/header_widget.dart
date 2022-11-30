import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/l10n/app_localizations.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/header/apply_button_widget.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list_header/articles_filter/articles_filter_overlay/header/clear_out_button_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Column(
      children: [
        Text(
          AppLocalizations.of(context)!.filterText,
          style: store.state.theme.articlesFilterOverlayHeaderTitleTextStyle,
        ),
        const SizedBox(height: AppSize.articlesFilterOverlayHeaderTitleAndButtonsSeparatorSize),
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Flexible(
                fit: FlexFit.tight,
                child: CleanOutButtonWidget(),
              ),
              SizedBox(width: AppSize.articlesFilterOverlayHeaderCleanOutAndApplyButtonsSeparatorSize),
              Flexible(
                fit: FlexFit.tight,
                child: ApplyButtonWidget(),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}