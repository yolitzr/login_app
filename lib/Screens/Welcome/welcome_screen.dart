import 'package:flutter/material.dart';
import 'package:login_app/Screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // This size provide us total heiggt and width of our screen
    return  Scaffold(
      body: Body(size: size)
    );
  }
}
