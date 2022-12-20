import 'package:flutter/material.dart';
import 'package:tproger_mobile_app/src/models/consts/app_size.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:transparent_image/transparent_image.dart';

class ArticleAuthorAvatarWidget extends StatelessWidget {
  final String avatarLink;

  const ArticleAuthorAvatarWidget({
    required this.avatarLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: AppSize.articleAuthorAvatarRadius,
    child: SizedBox(
      width: AppSize.articleAuthorAvatarSize,
      height: AppSize.articleAuthorAvatarSize,      
      child: FadeInImage.memoryNetwork(
        image: avatarLink,
        placeholder: kTransparentImage,
        imageErrorBuilder: (context, error, stackTrace) => Image.asset(//TODO:
          Asset.defaultAvatar.value,
          package: Asset.package,
        ),
      ),
    ),
  );
}
