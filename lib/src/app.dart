import 'package:flutter/material.dart';
import 'package:flutter_keynote/flutter_keynote.dart';

import 'package:welcome/src/slides/first_slide.dart';
import 'package:welcome/src/slides/gmail_slide.dart';
import 'package:welcome/src/slides/logo_slide.dart';
import 'package:welcome/src/slides/made_with_flutter_slide.dart';
import 'package:welcome/src/slides/meetup_slide.dart';
import 'package:welcome/src/slides/members_slide.dart';
import 'package:welcome/src/slides/organizers2_slide.dart';
import 'package:welcome/src/slides/organizers_slide.dart';
import 'package:welcome/src/slides/scaffold2_slide.dart';
import 'package:welcome/src/slides/scaffold_slide.dart';
import 'package:welcome/src/slides/starting_flutter_madrid.dart';
import 'package:welcome/src/slides/telegram_slide.dart';
import 'package:welcome/src/slides/thanks_slide.dart';
import 'package:welcome/src/slides/todo_widget_slide.dart';
import 'package:welcome/src/slides/twitter_slide.dart';
import 'package:welcome/src/slides/web_slide.dart';

const List<Widget> slides = [
  FirstSlide(),
  TodoWidgetSlide(),
  StartingFlutterMadridSlide(),
  ScaffoldSlide(),
  Scaffold2Slide(),
  LogoSlide(),
  OrganizersSlide(),
  Organizers2Slide(),
  MeetupSlide(),
  WebSlide(),
  TwitterSlide(),
  TelegramSlide(),
  GmailSlide(),
  MembersSlide(),
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