import 'package:flutter/material.dart';
import 'package:login_app/components/already_have_an_account.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/components/rounded_input_field.dart';
import 'package:login_app/components/rounded_password_field.dart';
import 'package:login_app/components/background.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // This size provide us total heiggt and width of our screen
    return Stack(
      children: [
        Background(
          size: size,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/profile-img.png', width: size.width * 0.8),
                SizedBox(height: size.height * 0.05),
                RoundedInputField(
                    size: size,
                    hintText: 'Your email',
                    onChanged: (value) {},
                    icon: Icons.person),
                RoundedPasswordField(
                  size: size,
                  onChanged: (value) {},
                ),
                RoundedButton(
                  size: size,
                  text: 'Login',
                  bgColor: bgButton,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(height: size.height * 0.05),
                AlreadyHaveAnAccountCheck(
                  login: true,
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
