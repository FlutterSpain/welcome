import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';



class FirstSlide extends StatefulWidget {
  final bool isPaused;

  const FirstSlide({Key key, this.isPaused = false}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FirstSlideState();
}

class _FirstSlideState extends State<FirstSlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Hero(

        tag: widget.isPaused ? 'jguyf' :'logo',
        child: SizedBox(
          height: 300,
          child: FlareActor("assets/images/logo.flr",
              isPaused: widget.isPaused, animation: "reverse"),
        ),
      ),
    ));
  }
}
