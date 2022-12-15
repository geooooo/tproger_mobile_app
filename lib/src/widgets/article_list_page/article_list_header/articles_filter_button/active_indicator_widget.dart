import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

class ActiveIndicatorWidget extends StatelessWidget {
  const ActiveIndicatorWidget({ super.key });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Container(
      width: AppSize.articlesFiltersActiveIndicatorSize,
      height: AppSize.articlesFiltersActiveIndicatorSize,
      decoration: BoxDecoration(
        borderRadius: AppSize.articlesFiltersActiveIndicatorBorderRadius,
        color: store.state.theme.articlesFiltersAcitveIndicatorColor,
      ),
    ),
  );
}