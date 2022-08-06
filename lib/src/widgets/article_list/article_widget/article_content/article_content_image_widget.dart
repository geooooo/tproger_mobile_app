import 'package:flutter/widgets.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleContentImageWidget extends StatelessWidget {
  final String link;
  final Color backgroundColor;

  const ArticleContentImageWidget({
    required this.link,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    height: AppTheme.articleImageContainerHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(AppTheme.articleImageRadius),
    ),
    child: Center(
      child: SizedBox(
        height: AppTheme.articleImageHeight,
        child: Image.network(link),
      ),
    ),
  );
}
