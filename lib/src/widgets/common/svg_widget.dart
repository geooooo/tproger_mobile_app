import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jovial_svg/jovial_svg.dart';
import 'package:tproger_mobile_app/src/models/enums/asset.dart';

class SvgWidget extends StatelessWidget {
  final double size;
  final Asset asset;

  const SvgWidget({
    required this.size,
    required this.asset,
    super.key,
  });

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => SizedBox(
      height: constraints.maxHeight,
    child: ScalableImageWidget.fromSISource(
      background: Colors.amber,
      si: ScalableImageSource.fromSvg(
        rootBundle,
        asset.value,
      ),
    ),),
  );
}