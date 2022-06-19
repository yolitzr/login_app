import 'package:flutter/material.dart';
import 'package:login_app/components/text_field_container.dart';
import 'package:login_app/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.size,
    required this.onChanged,
  }) : super(key: key);

  final Size size;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        size: size,
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          decoration: const InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: bgButton,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: bgButton,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}
