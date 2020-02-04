import 'package:flutter/material.dart';
import 'package:flutter_keynote/flutter_keynote.dart';
import 'package:welcome/src/slides/code_slide/code_slide.dart';

import 'package:welcome/src/slides/first_slide.dart';

import 'package:welcome/src/slides/made_with_flutter_slide.dart';
import 'package:welcome/src/slides/thanks_slide.dart';
import 'package:welcome/src/slides/second_slide.dart';

const List<Widget> slides = [
  FirstSlide(isPaused: true),
  FirstSlide(),
  SecondSlide(state: SecondSlideState.first),
  SecondSlide(state: SecondSlideState.second),
  CodeSlide(state: CodeState.material),
  CodeSlide(state: CodeState.logo),
  CodeSlide(state: CodeState.alberto),
  CodeSlide(state: CodeState.jaime),
  CodeSlide(state: CodeState.meetup),
  CodeSlide(state: CodeState.web),
  CodeSlide(state: CodeState.twitter),
  CodeSlide(state: CodeState.telegram),
  CodeSlide(state: CodeState.gmail),
  CodeSlide(state: CodeState.github),
  // CodeSlide(state: CodeState.members),
  MadeWithFlutterSlide(),
  ThanksSlide(),
];
 
class WelcomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KeynoteApp(
      title: 'Welcome to Flutter Madrid',
      theme: ThemeData(
        backgroundColor: Color(0xFF02569b),
        textTheme: TextTheme(
          display1: TextStyle(
            color: Color(0xFF0175c2),
            fontFamily: 'GoogleSans',
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          display2: TextStyle(
            color: Color(0xFF60646b),
            fontFamily: 'GoogleSans',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          body2: TextStyle(
            color: Colors.white,
            fontFamily: 'GoogleSans',
            fontSize: 20.0
          ),
          caption: TextStyle(
            color: Color(0xFF202124),
            fontFamily: 'GoogleSans',
            fontSize: 18.0
          )
        )
      ),
      slides: slides
    );
  }
}