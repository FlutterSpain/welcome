import 'package:flutter/material.dart';

class ThanksSlide extends StatelessWidget {
  const ThanksSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¡Gracias!', style: Theme.of(context).textTheme.display3),
            Text('💙', style: Theme.of(context).textTheme.display3),
          ]
        ),
      )
    );
  }
}