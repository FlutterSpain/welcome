import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum SecondSlideState { first, second }

class SecondSlide extends StatelessWidget {
  final SecondSlideState state;

  const SecondSlide({Key key, this.state = SecondSlideState.first})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Theme.of(context).backgroundColor,
        body: Center(
            child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 300,
                  child: FlareActor("assets/images/logo.flr",
                      snapToEnd: true, isPaused: true, animation: "transform"),
                ),
              ),
              SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: 'En Flutter todo es un ',
                  style: Theme.of(context).textTheme.display3,
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Widget',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              state == SecondSlideState.second
                  ? RichText(
                      text: TextSpan(
                        text: '',
                        style: Theme.of(context).textTheme.display3,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Flutter Madrid',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87)),
                          TextSpan(text: ' también'),
                        ],
                      ),
                    )
                  : Text('', style: Theme.of(context).textTheme.display3),
              SizedBox(height: 200)
            ],
          ),
        ),
        Hero(tag: 'right_background', child: Container(height: double.infinity))
      ],
    )));
  }
}
