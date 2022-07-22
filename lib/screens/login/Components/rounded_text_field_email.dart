import 'package:auth_screen/screens/login/Components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../../../constans.dart';

class RoundedInputField extends StatelessWidget {
  final IconData icon;

  final String hintText;
  final ValueChanged<String> onChange;

  const RoundedInputField({
    Key? key,
    required this.icon,
    required this.hintText,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContiner(
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
