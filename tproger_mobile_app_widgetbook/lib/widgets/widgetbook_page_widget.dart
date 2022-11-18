import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/common/page_widget.dart';

class WidgetbookPageWidget extends PageWidget {
  final Widget child;
  
  const WidgetbookPageWidget({ 
    required this.child,
    super.key,
  });

  @override
  Widget buildContent(BuildContext context) => child;
}
