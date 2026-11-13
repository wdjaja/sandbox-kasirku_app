import 'package:flutter/material.dart';
import 'package:kasirku_app/extension/theme_extention.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.textAlign,
    this.weight,
  });

  final String text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.theme.textTheme.titleMedium?.copyWith(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
