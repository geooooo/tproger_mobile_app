import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/widgets/article_list_page/article_list/article_widget/article_footer/reactions/reaction_text_widget.dart';

class AddReactionWidget extends StatelessWidget {
  const AddReactionWidget({ super.key });

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: const Color.fromRGBO(24, 29, 28, 1),
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(180)),
        ),
        child: SvgPicture.asset(
          Asset.like.value,
          width: 24,
          height: 24,
        ),
      ),
      const SizedBox(width: 2),
      const ReactionTextWidget(text: 'Оценить'),
    ],
  );
}