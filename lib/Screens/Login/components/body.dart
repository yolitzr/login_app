import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/rounded_input_field.dart';
import 'package:login_app/components/background.dart';

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
                    Image.asset('assets/profile-img.png',
                        width: size.width * 0.8),
                    RoundedInputField(
                        size: size,
                        hintText: 'Hola',
                        onChanged: (value) {},
                        icon: Icons.person),
                  ]),
            ))
      ],
    );
  }
}
