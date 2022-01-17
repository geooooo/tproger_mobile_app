import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/widgets/article_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(12, 17, 17, 1),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) => SingleChildScrollView(
              child: Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20 / 2,
                  vertical: 24,
                ),
                child: Column(
                  children: const [
                    ArticleWidget(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}