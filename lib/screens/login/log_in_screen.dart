import 'package:auth_screen/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../signup/sign_up_screen.dart';
import '../welcome/components/rounded_button.dart';
import 'Components/already_have_an_Account_check.dart';
import 'Components/background_log_in_screen.dart';
import 'Components/rounded_password_field.dart';
import 'Components/rounded_text_field_email.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackGround(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log In',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                'assets/svg/login.svg',
                width: size.width * 0.5,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: 'Your Email',
                onChange: (value) {},
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              RoundedPasswordTextField(
                icon: Icons.lock,
                hintText: 'Password',
                onChanged: (value) {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedButton(
                color: kPrimaryColor,
                text: 'Log In',
                textColor: Colors.white,
                onPress: () {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccountCheck(
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
