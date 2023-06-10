import 'package:flutter/material.dart';
import 'package:saty_safe_admin/configurations/color_constants.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? controller;
  TextInputType? textInputType;
  bool isObsecure;
  String hintText;
  String? labelText;
  double? radius;
  IconData? prefixIcon;
  bool? isSuffix;
  Color? inputTextColor;
  

  CustomTextField({
    this.inputTextColor,
    this.controller,
    this.isObsecure = false,
    this.textInputType,
    required this.hintText,
    this.labelText,
    this.radius,
    this.prefixIcon,
    this.isSuffix = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: widget.inputTextColor),
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.left,
      
      controller: widget.controller,
      obscureText: widget.isObsecure,
      keyboardType: widget.textInputType,
      cursorColor: ColorConstants.kPrimaryColor,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1.2, color: ColorConstants.kPrimaryColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 12),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1.2, color: ColorConstants.kPrimaryColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1.2, color: ColorConstants.kPrimaryColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(width: 1.2, color: ColorConstants.kPrimaryColor),
          borderRadius: BorderRadius.circular(widget.radius ?? 12),
        ),
        hintText: widget.hintText,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        hintStyle:  TextStyle(
          color: ColorConstants.kgreyColor,
        ),
        prefixIcon: widget.prefixIcon == null
            ? null
            : Icon(
                widget.prefixIcon,
                color: Colors.grey,
              ),
        suffixIcon: widget.isSuffix == false
            ? null
            : IconButton(
                onPressed: changeObsecureStatus,
                icon: isVisible
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
              ),
      ),
    );
  }

  changeObsecureStatus() {
    setState(() {
      widget.isObsecure = !widget.isObsecure;
      isVisible = !isVisible;
    });
  }
}
