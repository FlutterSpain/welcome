import 'package:flutter/material.dart';

class TodoWidgetSlide extends StatelessWidget {
  const TodoWidgetSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('En Flutter todo es un widget', style: Theme.of(context).textTheme.display3),
            Text('', style: Theme.of(context).textTheme.display3),
          ]
        ),
      )
    );
  }
}