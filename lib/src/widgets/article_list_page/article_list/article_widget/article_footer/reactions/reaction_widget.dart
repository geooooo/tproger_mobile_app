import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class ReactionWidget extends StatelessWidget {
  final Asset reaction;

  const ReactionWidget({ 
    super.key,
    required this.reaction,
  });

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      border: Border.all(
        width: 3,
        color: const Color.fromRGBO(24, 29, 28, 1),
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(180)),
    ),
    child: SvgPicture.asset(
      reaction.value,
      width: 24,
      height: 24,
    ),
  );
}