import 'package:auth_screen/screens/signup/components/text_field_container.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  final Icon icon;

  final TextInputType textInputType;
  final String hintText;
  final ValueChanged<String> onChanged;

  const PasswordTextField({
    Key? key,
    required this.icon,
    required this.onChanged,
    required this.textInputType,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldCotainer(
        child: TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: icon,
          hintText: hintText,
          suffixIcon: Icon(Icons.visibility)),
      obscureText: true,
      onChanged: onChanged,
    ));
  }
}
