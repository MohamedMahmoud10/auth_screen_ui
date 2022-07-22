import 'package:flutter/material.dart';

import '../../../constans.dart';
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool logIn;
  final Function ()onPress;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.logIn = true,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          logIn ? 'Don\t have an Account ?' : 'Already have an Account ?',
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            logIn ? 'Sign Up' : 'Sign In',
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
