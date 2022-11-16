import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tproger_mobile_app/src/models/app_state/app_state.dart';

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
      style: store.state.theme.articleReactionTextStyle,
    ),
  );
}