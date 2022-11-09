import 'package:flutter/widgets.dart';
// import 'package:get_it/get_it.dart';
// import 'package:logger/logger.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/services/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleAuthorAvatarWidget extends StatelessWidget {
  // final _logger = GetIt.instance.get<Logger>();

  final String avatarLink;

  const ArticleAuthorAvatarWidget({
    required this.avatarLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: const BorderRadius.all(AppTheme.articleAuthorAvatarRadius),
    child: SizedBox(
      width: AppTheme.articleAuthorAvatarSize,
      height: AppTheme.articleAuthorAvatarSize,
      child: FadeInImage.memoryNetwork(
        image: avatarLink,
        placeholder: kTransparentImage,
        imageErrorBuilder: imageErrorBuilder,
      ),
    ),
  );

  Widget imageErrorBuilder(BuildContext context, Object error, StackTrace? stackTrace) {
    // _logger.e('Author avatar loading', error, stackTrace);
    return Image.asset(Asset.defaultAvatar.value);
  }
}
