import 'package:auth_screen/constans.dart';
import 'package:auth_screen/screens/login/Components/already_have_an_Account_check.dart';
import 'package:auth_screen/screens/login/log_in_screen.dart';
import 'package:auth_screen/screens/signup/components/password_text_field.dart';
import 'package:auth_screen/screens/signup/components/rounded_input_field.dart';
import 'package:auth_screen/screens/signup/components/sign_up_back_ground.dart';
import 'package:auth_screen/screens/signup/components/social_icon.dart';
import 'package:auth_screen/screens/welcome/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUPBackGround(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SignUp',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/svg/signup.svg',
            width: size.width * 0.5,
          ),
          RoundedInputField(
            textInputType: TextInputType.name,
            hintText: 'Name',
            icon: const Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            iconColor: kPrimaryColor,
            onChange: (value) {},
          ),
          RoundedInputField(
            textInputType: TextInputType.emailAddress,
            hintText: 'Email',
            icon: const Icon(
              Icons.email,
              color: kPrimaryColor,
            ),
            iconColor: kPrimaryColor,
            onChange: (value) {},
          ),
          RoundedInputField(
            textInputType: TextInputType.phone,
            hintText: 'Phone',
            icon: const Icon(
              Icons.phone,
              color: kPrimaryColor,
            ),
            iconColor: kPrimaryColor,
            onChange: (value) {},
          ),
          PasswordTextField(
            textInputType: TextInputType.visiblePassword,
            hintText: 'Password',
            icon: const Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            onChanged: (value) {},
          ),
          RoundedButton(
              text: 'SignUp',
              color: kPrimaryColor,
              textColor: Colors.white,
              onPress: () {}),
          SizedBox(height: size.height*0.01,),
          AlreadyHaveAnAccountCheck(
              logIn: false,
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LogInScreen()));
              }),
          SizedBox(height: size.height*0.02,),
          const OrDivider(),
          SizedBox(height: size.height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                onPress: () {},
                iconSrc: 'assets/svg/facebook.svg',
              ),
              SocialIcon(
                onPress: () {},
                iconSrc: 'assets/svg/google-plus.svg',
              ),
              SocialIcon(
                onPress: () {},
                iconSrc: 'assets/svg/twitter.svg',
              ),
            ],
          )
        ],
      ),
    ));
  }
}

