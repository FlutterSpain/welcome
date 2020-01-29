import 'package:flutter/material.dart';

class StartingFlutterMadridSlide extends StatelessWidget {
  const StartingFlutterMadridSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Todo es un widget', style: Theme.of(context).textTheme.display3),
            Text('Flutter Madrid también', style: Theme.of(context).textTheme.display3),
          ]
        ),
      )
    );
  }
}