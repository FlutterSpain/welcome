import 'package:flutter/material.dart';

class FirstSlide extends StatelessWidget {
  const FirstSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
          child: Image.asset(
            'assets/images/icon_flutter_madrid.png',
            width: 200,
            height: 200,
          )
        ),
    );
  }
}