import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/login_screen.dart';
import 'package:login_app/components/background.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provide us total heiggt and width of our screen
    return Background(
        size: size,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to CA',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Image.asset(
                'assets/verification-img.png',
                width: size.width * 0.8,
                height: size.height * 0.4,
              ),
              SizedBox(height: size.height * 0.02),
              RoundedButton(
                size: size,
                onPressed: () { 
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen())
                  );
                },
                text: 'Login',
                bgColor: bgButton,
                textColor: Colors.white,
              ),
              RoundedButton(
                size: size,
                onPressed: () {},
                text: 'Sing Up',
                bgColor: bgTop,
                textColor: Colors.white,
              ) // This is the old FlatButton
            ],
          ),
        ));
  }
}

