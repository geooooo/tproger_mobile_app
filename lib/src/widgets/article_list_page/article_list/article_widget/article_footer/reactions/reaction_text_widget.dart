import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReactionTextWidget extends StatelessWidget {
  final String text;

  const ReactionTextWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: GoogleFonts.inter(
      color: const Color.fromRGBO(118, 135, 135, 1),
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  );
}