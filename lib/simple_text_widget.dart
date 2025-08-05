import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SimpleTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? minFontSize;
  final double? maxFontSize;
  final FontWeight? fontWeight;
  final double wordSpacing;
  final double? decorationThickness;
  final TextDecoration? decoration;
  final VoidCallback? onClick;
  final TextAlign? textAlign;
  final String? fontFamily;
  final Color? decorationColor;
  final AutoSizeGroup? group;
  final TextDirection? textDirection;
  final Color? backgroundColor;
  final double? height;
  final FontStyle? fontStyle;
  final String? package;

  const SimpleTextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.minFontSize,
    this.maxFontSize,
    this.decorationThickness,
    this.decoration,
    this.wordSpacing = 0,
    this.onClick,
    this.textAlign,
    this.fontFamily,
    this.decorationColor,
    this.group,
    this.textDirection,
    this.backgroundColor,
    this.height,
    this.fontStyle,
    this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? AutoSizeText(
              text,
              overflow: overflow,
              textAlign: textAlign,
              group: group,
              textDirection: textDirection,

              style: TextStyle(
                fontSize: size,
                fontWeight: fontWeight,
                color: color,
                wordSpacing: wordSpacing,
                decoration: decoration,
                decorationColor: decorationColor,
                decorationThickness: decorationThickness,
                fontFamily: fontFamily,
                backgroundColor: backgroundColor,
                height: height,
                fontStyle: fontStyle,
                package: package,
              ),
              maxLines: maxLines,
              minFontSize: minFontSize ?? 12,
            )
          : TextButton(
              onPressed: () {
                onClick!.call();
              },
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.all(color.withAlpha(10)),
              ),
              child: AutoSizeText(
                text,
                textAlign: textAlign,
                style: TextStyle(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: color,
                  wordSpacing: wordSpacing,
                  decoration: decoration,
                  decorationColor: decorationColor,
                  decorationThickness: decorationThickness,
                  fontFamily: fontFamily,
                  backgroundColor: backgroundColor,
                  height: height,
                  fontStyle: fontStyle,
                  package: package,
                ),
              ),
            ),
    );
  }
}
