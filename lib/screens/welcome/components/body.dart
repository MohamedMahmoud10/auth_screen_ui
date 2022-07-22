import 'package:auth_screen/constans.dart';
import 'package:auth_screen/screens/signup/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../login/log_in_screen.dart';
import 'background.dart';
import 'rounded_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGorund(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              'assets/svg/chat.svg',
              width: size.width * 0.9,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: 'Sign Up',
              color: kPrimaryColor,
              textColor: Colors.white,
              onPress: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SignUpScreen()));
              },
            ),
            RoundedButton(
                text: 'Log In',
                color: kPrimaryLightColor,
                textColor: Colors.black,
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LogInScreen()));
                })
          ],
        ),
      ),
    );
  }
}
