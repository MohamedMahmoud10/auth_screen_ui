import 'package:auth_screen/screens/signup/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final ValueChanged<String> onChange;
  final Icon icon;
  final Color iconColor;
  final String hintText;
  final TextInputType textInputType;
  Icon? suffixIcon;

  RoundedInputField({
    Key? key,
    required this.onChange,
    required this.icon,
    required this.iconColor,
    this.suffixIcon,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return TextFieldCotainer(
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: hintText,
            icon: icon,
            iconColor: iconColor,
            suffixIcon: suffixIcon,
            border: InputBorder.none),
        onChanged: onChange,
      ),
    );
  }
}
