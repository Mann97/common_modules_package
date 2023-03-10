import 'package:common_modules_package/safe_on_tap_button.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final String? leftImage;
  final double? leftImageHeight;
  final double? leftImageWidth;
  final double? leftImageHorizontalPadding;
  final String? rightImage;
  final double? rightImageHeight;
  final double? rightImageWidth;
  final double? rightImageHorizontalPadding;
  final String? buttonText;
  final int? buttonMaxLine;
  final TextStyle? buttonTextStyle;
  final double? buttonHorizontalPadding;
  final GestureTapCallback onTap;
  final TextAlign? buttonTextAlignment;
  final Color? buttonTextColor;

  const CommonButton({
    Key? key,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.leftImage,
    this.leftImageHeight,
    this.leftImageWidth,
    this.leftImageHorizontalPadding,
    this.rightImage,
    this.rightImageHeight,
    this.rightImageWidth,
    this.rightImageHorizontalPadding,
    this.buttonText,
    this.buttonMaxLine,
    this.buttonTextStyle,
    this.buttonHorizontalPadding,
    required this.onTap,
    this.buttonTextAlignment,
    this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeOnTap(
      onSafeTap: () {
        onTap?.call();
      },
      child: Container(
        height: height ?? 48,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.blue,
            borderRadius: borderRadius ?? BorderRadius.circular(10),
            border: Border.all(
                color: borderColor ?? Colors.transparent,
                width: borderWidth ?? 0)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if ((leftImage ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: leftImageHorizontalPadding ?? 12),
                child: Image.asset(
                  leftImage!,
                  height: leftImageHeight,
                  width: leftImageWidth,
                ),
              ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: buttonHorizontalPadding ?? 0),
                child: Text(
                  buttonText ?? '',
                  textAlign: buttonTextAlignment ?? TextAlign.center,
                  maxLines: buttonMaxLine ?? 1,
                  style: buttonTextStyle ??
                      TextStyle(
                        fontSize: 14,
                        color: buttonTextColor ?? Colors.white,
                      ),
                ),
              ),
            ),
            if ((rightImage ?? '').isNotEmpty)
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: rightImageHorizontalPadding ?? 12),
                child: Image.asset(
                  rightImage!,
                  height: rightImageHeight,
                  width: rightImageWidth,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/*
Widget Usage
CommonButton(
          buttonText: "Login",
          onTap: () {

          },
        )
* */
