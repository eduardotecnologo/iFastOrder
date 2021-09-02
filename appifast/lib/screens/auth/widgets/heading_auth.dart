import 'package:flutter/material.dart';


class HeadingAuth extends StatelessWidget {
  const HeadingAuth
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/images/iFastOrderIcon.png'),
          fit: BoxFit.fill
        )
      ),
    );
  }
}