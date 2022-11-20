import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/common/loader_widget.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookComponent buildLoaderComponent(BuildContext context) => WidgetbookComponent(
  name: 'Loader',
  useCases: [
    WidgetbookUseCase(
      name: 'Default', 
      builder: (context) => const Center(
        child: LoaderWidget(),
      ),
    ),
  ],
);