import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provide us total heiggt and width of our screen
    return Scaffold(
      body: Body(size: size),
    );
  }
}


