import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle elevatedButtonStyle({
    required Color backgroundColor,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    Size? minimumSize,
    double? elevation,
    BorderRadius? borderRadius,
    Color? borderSideColor,
    double? borderSideWidth,
  }) {
    return ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      padding: padding,
      textStyle: TextStyle(fontSize: fontSize),
      minimumSize: minimumSize,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.zero,
        side: borderSideColor != null
            ? BorderSide(color: borderSideColor, width: borderSideWidth ?? 0)
            : BorderSide.none,
      ),
    );
  }
}

class CustomClipOvalWidget extends StatelessWidget {
  const CustomClipOvalWidget({super.key,
    required this.child,
    this.width = 100,
    this.height = 100,
    this.backgroundColor = Colors.transparent,
    this.clipBehavior = Clip.antiAlias,
    this.borderRadius = 0,
    this.border,
  });

  final Widget child;
  final double width;
  final double height;
  final Color backgroundColor;
  final Clip clipBehavior;
  final double borderRadius;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      //clipBehavior: clipBehavior,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
