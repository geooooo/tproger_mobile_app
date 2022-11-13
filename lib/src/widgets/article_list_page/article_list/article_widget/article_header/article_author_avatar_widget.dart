import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleAuthorAvatarWidget extends StatelessWidget {
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
      ),
    ),
  );
}
