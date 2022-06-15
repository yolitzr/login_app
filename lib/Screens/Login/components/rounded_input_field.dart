import 'package:flutter/material.dart';
import 'package:login_app/Screens/Login/components/text_field_container.dart';
import 'package:login_app/constants.dart';

class RoundedInputField extends StatelessWidget {
  final Size size;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.size,
    required this.hintText,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      size: size,
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: bgButton,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
