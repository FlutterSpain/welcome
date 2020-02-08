import 'package:flutter/material.dart';

class MadeWithFlutterSlide extends StatelessWidget {
  const MadeWithFlutterSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: 'right_background',
              child: Container(
            color: Theme.of(context).backgroundColor,
          )),
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hecho con Flutter', style: Theme.of(context).textTheme.display3.copyWith(
                      color: Colors.white
                  )),
                  Text('https://pub.dev/packages/flutter_keynote', style: Theme.of(context).textTheme.display1.copyWith(
                      color: Color(0xe613b9fd)
                  )),
                ]
            ),
          )
        ],
      )
    );
  }
}