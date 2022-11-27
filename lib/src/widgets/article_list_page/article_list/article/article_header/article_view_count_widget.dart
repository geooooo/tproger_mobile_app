import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:tproger_mobile_app/src/models/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/view_count_service.dart';

class ArticleViewCountWidget extends StatelessWidget {
  final _viewCountService = GetIt.instance.get<ViewCountService>();

  final int viewCount;
  final bool isInvertetStyle;

  ArticleViewCountWidget({
    required this.viewCount,
    required this.isInvertetStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Asset.eye.value,
          package: Asset.package,
          width: AppSize.articleViewCountIconSize,
          height: AppSize.articleViewCountIconSize,
          color: isInvertetStyle
            ? store.state.theme.articleViewCountIconInvertedColor
            : store.state.theme.articleViewCountIconColor,
        ),
        const SizedBox(width: AppSize.articleViewCountIconAndViewCountTextSeparatorSize),
        Text(
          _viewCountService.format(viewCount),
          textAlign: TextAlign.start,
          style: isInvertetStyle
            ? store.state.theme.articleViewCountInvertedTextStyle
            : store.state.theme.articleViewCountTextStyle,
        ),
      ],
    ),
  ); 
}
