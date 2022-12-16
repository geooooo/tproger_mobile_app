import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';
import 'package:tproger_mobile_app/src/models/app_theme/app_theme.dart';

class ReactionTextWidget extends StatelessWidget {
  final String text;

  const ReactionTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) => StoreBuilder<AppState>(
    builder: (context, store) => Text(
      text,
      style: Theme.of(context).extension<AppTheme>()!.articleReactionTextStyle,
    ),
  );
}