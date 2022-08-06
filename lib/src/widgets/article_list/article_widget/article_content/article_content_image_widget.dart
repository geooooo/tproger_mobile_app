import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleContentImageWidget extends StatelessWidget {
  final _logger = GetIt.instance.get<Logger>();
  
  final String link;
  final String backgroundColor;

  ArticleContentImageWidget({
    required this.link,
    required this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
    height: AppTheme.articleImageContainerHeight,
    width: double.infinity,
    decoration: BoxDecoration(
      color: AppTheme.getColorFromHex(backgroundColor),
      borderRadius: const BorderRadius.all(AppTheme.articleImageRadius),
    ),
    child: Center(
      child: SizedBox(
        height: AppTheme.articleImageHeight,
        child: Image.network(
          link,
          errorBuilder: _imageErrorBuilder,
        ),
      ),
    ),
  );

  Widget _imageErrorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
    _logger.e('article image loading', error, stackTrace);
    return const Placeholder();
  }
}
