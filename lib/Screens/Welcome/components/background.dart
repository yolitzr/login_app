import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.size,
    required this.child, 
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -35,
              left: -35,
              child: Image.asset(
                'assets/bg-auth-welcome-top.png',
                width: size.width * 0.4,
              ),
            ),
            Positioned(
              bottom: -35,
              right: -35,
              child: Image.asset(
                'assets/bg-auth-welcome-bottom.png',
                width: size.width * 0.4,
              ),
            ),
            child,
          ],
        ));
  }
}
