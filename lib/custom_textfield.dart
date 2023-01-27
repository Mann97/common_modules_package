import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  BuildContext context;
  TextEditingController? myController;
  ValueChanged<String>? onChanged;
  List<TextInputFormatter>? inputFormatters;
  TextInputAction? textInputAction;
  TextInputType? textInputType;
  String? placeHolderMessage;
  String? errorMessage;
  String? hintText;
  bool obscureText;
  bool enable;
  FocusNode? myFocus;
  int? maxLine;
  int? maxLength;
  double? height;
  double? width;
  Widget? preFix;
  Widget? sufFix;
  Color bgColor;
  Color? cursorColor;
  final InputBorder? focusedInputBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? border;
  final InputBorder? enabledInputBorder;
  final InputBorder? disabledInputBorder;
  Color? colorHint;
  Function()? onEditingComplete;
  BoxDecoration? boxDecoration;
  Color? borderColor;
  double? borderRadius;

  CustomTextField({
    Key? key,
    required this.context,
    required this.myController,
    this.onChanged,
    this.textInputType,
    this.textInputAction,
    this.focusedInputBorder,
    this.focusedErrorBorder,
    this.border,
    this.enabledInputBorder,
    this.disabledInputBorder,
    this.placeHolderMessage = "",
    this.errorMessage = "",
    this.hintText = "",
    this.obscureText = false,
    this.enable = true,
    this.inputFormatters,
    this.myFocus,
    this.cursorColor,
    this.maxLine,
    this.height,
    this.width,
    this.preFix,
    this.sufFix,
    required this.bgColor,
    this.boxDecoration,
    this.maxLength,
    this.colorHint,
    this.borderColor,
    this.onEditingComplete,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height ?? 60,
          color: bgColor,
          // margin: EdgeInsets.symmetric(vertical: 0.h, horizontal: 15.w),
          // padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.w),
          decoration: boxDecoration ??
              BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius ?? 0),
                  border: Border.all(color: borderColor ?? Colors.grey)),
          alignment: Alignment.center,
          child: TextFormField(
            autofocus: false,
            maxLines: maxLine ?? 1,
            enabled: enable,
            controller: myController,
            onChanged: onChanged,
            focusNode: myFocus,
            cursorColor: cursorColor ?? Colors.black,
            obscureText: obscureText,
            keyboardType: textInputType,
            textInputAction: textInputAction,
            maxLength: maxLength,
            onEditingComplete: onEditingComplete,
            style: const TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
            inputFormatters: inputFormatters,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              isDense: true,
              suffixIcon: sufFix ?? const Offstage(),
              contentPadding: const EdgeInsetsDirectional.fromSTEB(10, 8, -30, 8),
              prefix: preFix,
              labelText: placeHolderMessage,
              alignLabelWithHint: true,
              hintStyle: TextStyle(
                  // fontFamily: fontFamily,
                  fontSize: 16,
                  color: colorHint ?? Colors.black,
                  fontWeight: FontWeight.w400),
              labelStyle: TextStyle(
                  // fontFamily: fontFamily,
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w100),
              errorStyle: TextStyle(color: Colors.black),
              focusedBorder: focusedInputBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
              enabledBorder: enabledInputBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
              border: border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
              hintText: hintText,
              disabledBorder: disabledInputBorder ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
            ),
          ),
        ),
        (errorMessage != null && errorMessage != "")
            ? Padding(
                padding:
                   const EdgeInsetsDirectional.only(top: 6, bottom: 6, start: 0),
                child: Text(
                  errorMessage ?? "",
                  style: const TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                      fontWeight: FontWeight.w400),
                ),
              )
            : Container()
      ],
    );
  }
}
