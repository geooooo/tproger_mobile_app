import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';
import 'package:tproger_mobile_app/src/models/enums/reaction.dart';

class ReactionsWidget extends StatelessWidget {
  final Map<Reaction, int> reactionToCounts;

  const ReactionsWidget({ 
    required this.reactionToCounts,
    super.key,
  });

  bool get isZero {
    final count = reactionToCounts.values.reduce((x, y) => x + y);
    return count == 0;
  }

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      color: const Color.fromRGBO(0, 0, 0, 1),
      border: Border.all(
        width: 1,
        color: const Color.fromRGBO(37, 37, 37, 1),
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(50)),
    ),
    padding: const EdgeInsets.only(
      top: 4,
      right: 12,
      bottom: 4,
      left: 3,
    ),
    child: isZero ? buildZero() : buildFull(),
  );

  Widget buildFull() => Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        width: 74,
        child: Stack(
          children: [
            Positioned(
              left: 44,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: const Color.fromRGBO(24, 29, 28, 1),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(180)),
                ),
                child: SvgPicture.asset(
                  Asset.surprise.value,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Positioned(
              left: 22,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: const Color.fromRGBO(24, 29, 28, 1),
                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(180)),
                ),
                child: SvgPicture.asset(
                  Asset.surprise.value,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Positioned(
              child: Container(
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
            ),
          ],
        ),
      ),
      const SizedBox(width: 2),
      Text(
        '2',
        style: GoogleFonts.inter(
          color: const Color.fromRGBO(118, 135, 135, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ],
  );

  Widget buildZero() => Row(
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
      Text(
        'Оценить',
        style: GoogleFonts.inter(
          color: const Color.fromRGBO(118, 135, 135, 1),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ],
  );
}
