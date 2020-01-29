import 'package:flutter/material.dart';

class HeroTextWidget extends StatelessWidget {

  final String tag;
  final String text;

  const HeroTextWidget({Key key, this.tag, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: this.tag,
      child: Material(
        type: MaterialType.transparency,
        child: Text(
          this.text,
          style: Theme.of(context).textTheme.body2,
        ),
      ),
    );
  }
}
