import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_theme/app_theme.dart';
import 'package:tproger_mobile_app/src/widgets/article_list/article_widget/article_author/author_avatar_shimmer_widget.dart';

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
        errorBuilder: _errorBuilder,
        loadingBuilder: _loadingBuilder,
      ),
    ),
  );

  Widget _errorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
    _logger.e('Author avatar loading', error, stackTrace);
    return Image.asset(Asset.defaultAvatar.value);
  }

  Widget _loadingBuilder(BuildContext context, Widget imageWidget, ImageChunkEvent? loadingProgress) {
    if (loadingProgress == null) {
      return imageWidget;
    }

    return ArticleAuthorShimmerWidget(
      child: imageWidget,
    );
  }
}
