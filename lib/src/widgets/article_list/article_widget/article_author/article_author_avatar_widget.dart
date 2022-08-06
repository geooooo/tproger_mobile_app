import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';

class ArticleAuthorAvatarWidget extends StatelessWidget {
  final _logger = GetIt.instance.get<Logger>();

  final String avatarLink;

  ArticleAuthorAvatarWidget({
    required this.avatarLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: const BorderRadius.all(AppTheme.articleAuthorAvatarRadius),
    child: SizedBox(
      width: AppTheme.articleAuthorAvatarSize,
      height: AppTheme.articleAuthorAvatarSize,
      child: Image.network(
        avatarLink,
        errorBuilder: _imageErrorBuilder,
      ),
    ),
  );

  Widget _imageErrorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
    _logger.e('author avatar loading', error, stackTrace);
    return const Placeholder();
  }
}
