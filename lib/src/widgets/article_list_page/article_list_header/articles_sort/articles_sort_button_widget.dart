import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/articles_sort_type.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_localization_service.dart';

class ArticlesSortButtonWidget extends StatelessWidget {
  static const _duration = Duration(milliseconds: 350);

  final _appLocalizationService = GetIt.instance.get<AppLocalizationService>();

  final ArticlesSortType type;
  final bool isOpened;

  ArticlesSortButtonWidget({
    required this.type,
    required this.isOpened,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Container(
      padding: AppSize.articlesSortButtonPadding,
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.articlesSortBorderSize,
          color: store.state.theme.articlesSortBorderColor,
        ),
        borderRadius: const BorderRadius.all(AppSize.articlesSortBorderRadius),
        color: store.state.theme.articlesSortColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            _appLocalizationService.getTextByArticlesSortType(type, context),
            style: store.state.theme.articlesSortMenuItemTextStyle,
          ),
          const SizedBox(width: AppSize.articleSortTextAndIconSeparatorSize),
          AnimatedRotation(
            duration: _duration,
            turns: isOpened? 0.5 : 0,
            curve: Curves.ease,
            child: SvgPicture.asset(
              Asset.arrowUp.value,
              package: Asset.package,
              width: AppSize.articlesSortIconSize,
              height: AppSize.articlesSortIconSize,
              color: store.state.theme.articlesSortMenuItemTextStyle.color,
            ),
          ),
        ],
      ),
    ),
  );
}