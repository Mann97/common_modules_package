import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonInputFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final String? placeholderImage;
  final double? placeholderImageHeight;
  final double? placeholderImageWidth;
  final double? placeholderImageHorizontalPadding;
  final String? placeholderText;
  final TextStyle? placeholderTextStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final double? fieldWidth;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final TextStyle? fieldTextStyle;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? textInputFormatter;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final bool? isEnable;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final InputDecoration? inputDecoration;
  final bool? obscureText;
  final double? bottomFieldMargin;
  final Function(dynamic text)? onChanged;
  final Widget? suffixLabel;
  final Color? cursorColor;
  final bool? enableInteractiveSelection;
  final bool? readOnly;
  final EdgeInsets? contentPadding;
  final EdgeInsets? placeholderBottom;

  const CommonInputFormField(
      {Key? key,
      required this.textEditingController,
      required this.validator,
      this.placeholderImage,
      this.placeholderImageHeight,
      this.placeholderImageWidth,
      this.placeholderImageHorizontalPadding,
      this.placeholderText,
      this.placeholderTextStyle,
      this.hintText,
      this.hintTextStyle,
      this.fieldWidth,
      this.backgroundColor,
      this.borderColor,
      this.borderWidth,
      this.borderRadius,
      this.fieldTextStyle,
      this.maxLines,
      this.maxLength,
      this.textInputFormatter,
      this.textInputAction,
      this.textInputType,
      this.textCapitalization,
      this.isEnable,
      this.prefixWidget,
      this.suffixWidget,
      this.inputDecoration,
      this.obscureText,
      this.bottomFieldMargin,
      this.onChanged,
      this.suffixLabel,
      this.cursorColor,
      this.enableInteractiveSelection,
      this.readOnly,
      this.contentPadding,
      this.placeholderBottom})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (((placeholderImage ?? '').isNotEmpty) ||
            ((placeholderText ?? '').isNotEmpty))
          Padding(
            padding: placeholderBottom ?? const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if ((placeholderImage ?? '').isNotEmpty)
                  Padding(
                    padding: EdgeInsets.only(
                        right: placeholderImageHorizontalPadding ?? 0),
                    child: Image.asset(
                      placeholderImage!,
                      height: placeholderImageHeight ?? 32,
                      width: placeholderImageWidth ?? 32,
                    ),
                  ),
                if ((placeholderText ?? '').isNotEmpty)
                  Text(
                    placeholderText!,
                    style: placeholderTextStyle ??
                        const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                if (suffixLabel != null) suffixLabel!
              ],
            ),
          ),
        SizedBox(
          width: fieldWidth ?? double.infinity,
          child: Padding(
            padding: EdgeInsets.only(bottom: bottomFieldMargin ?? 0),
            child: TextFormField(
              readOnly: readOnly ?? false,
              cursorColor: cursorColor ?? Colors.black,
              controller: textEditingController,
              style: fieldTextStyle ??
                  const TextStyle(fontSize: 14, color: Colors.black),
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              maxLines: maxLines ?? 1,
              maxLength: maxLength ?? 1000,
              enableInteractiveSelection: enableInteractiveSelection ?? true,
              obscureText: obscureText ?? false,
              inputFormatters: textInputFormatter,
              onChanged: onChanged,
              textInputAction: textInputAction ?? TextInputAction.next,
              keyboardType: textInputType ?? TextInputType.text,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              decoration: InputDecoration(
                  errorMaxLines: 3,
                  enabled: isEnable ?? true,
                  counterText: '',
                  filled: true,
                  fillColor: backgroundColor ?? Colors.transparent,
                  suffixIcon: suffixWidget != null
                      ? Padding(
                          padding: const EdgeInsets.all(2), child: suffixWidget)
                      : null,
                  prefixIcon: prefixWidget,
                  contentPadding: contentPadding ??
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderColor ?? Colors.grey,
                      width: borderWidth ?? 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderColor ?? Colors.grey,
                      width: borderWidth ?? 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: borderWidth ?? 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: borderColor ?? Colors.grey,
                      width: borderWidth ?? 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: borderWidth ?? 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(10),
                  ),
                  border: InputBorder.none,
                  hintText: hintText,
                  alignLabelWithHint: true,
                  hintStyle: hintTextStyle),
              onFieldSubmitted: (text) {
                textEditingController.text = text;
              },
              validator: validator,
            ),
          ),
        )
      ],
    );
  }
}
/*
Widget Usage

CommonInputFormField(
  textEditingController: _mobileController,
  suffixWidget: Image.asset(Assets.imagesIcApple),
  validator: validateEmail,
  backgroundColor: AppColors.pinch,
  prefixWidget: Image.asset(Assets.imagesIcApple),
  placeholderImage: Assets.imagesIcApple,
  placeholderText: 'Mobile Number',
)
*/
