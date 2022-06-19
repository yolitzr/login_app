import 'package:flutter/material.dart';
import 'package:login_app/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final void Function() press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    required this.login,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Don´t have an Account ? ' : 'Already have an Account ? ',
          style: const TextStyle(
            color: text,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sing Up' : 'Sing In',
            style: const TextStyle(
              color: text,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
