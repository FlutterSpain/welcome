import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class ThanksSlide extends StatefulWidget {
  const ThanksSlide({Key key}) : super(key: key);

  @override
  _ThanksSlideState createState() => _ThanksSlideState();
}

class _ThanksSlideState extends State<ThanksSlide> {

  bool _textVisible = false;

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _textVisible = true;
      });
    });
    
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xe613b9fd),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: FlareActor(
                'assets/images/blue_heart.flr',
                animation: 'thanks',
              ),
            ),
            AnimatedOpacity(
              opacity: _textVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
              child: Text('¡Gracias!', style: Theme.of(context).textTheme.body2.copyWith(
                fontSize: 40.0
              ))
            )
          ]
        ),
      )
    );
  }
}
