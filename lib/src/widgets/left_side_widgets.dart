import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

logoWidget() => Positioned(
  top: 60.0,
  left: 20.0,
  child: Container(
    width: 400,
    child: Hero(
      tag: 'logoLeft',
      child: Image.asset('assets/images/logo_bigger.png')),
  ),
);

albertoWidget() => Positioned(
  top: 260.0,
  left: 60.0,
  child: Hero(
    tag: 'alberto',
    child: ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Image(
        image: AssetImage('assets/images/alberto.png'),
        height: 80,
        width: 80,
      )),
  ));

jaimeWidget() => Positioned(
  top: 260.0,
  left: 150.0,
  child: Hero(
    tag: 'jaime',
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image(
        image: AssetImage('assets/images/jaime.jpg'),
        height: 80,
        width: 80,
      )),
  ),
);

meetupWidget() => Positioned(
  top: 360.0,
  left: 60.0,
  child: Hero(
    tag: 'meetupleft',
    child: GestureDetector(
      onTap: () {
        launch('https://www.meetup.com/es-ES/Flutter-Madrid');
      },
      child: Icon(
        FontAwesomeIcons.meetup,
        color: Color(0xffe0393e),
        size: 80,
      ),
    )),
);

webWidget() => Positioned(
  top: 470.0,
  left: 60.0,
  child: Hero(
    tag: 'webleft',
    child: GestureDetector(
      onTap: () {
        launch('https://flutter.madrid');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: Image.asset(
          'assets/images/icon_flutter_madrid.jpg',
          width: 70,
          height: 70,
        ),
      ),
    )),
);

twitterWidget() => Positioned(
  top: 570.0,
  left: 60.0,
  child: Hero(
    tag: 'twitterleft',
    child: GestureDetector(
      onTap: () {
        launch('https://twitter.com/FlutterMadrid');
      },
      child: Icon(
        FontAwesomeIcons.twitter,
        color: Color(0xff00acee),
        size: 60,
      ),
    )),
);

telegramWidget() => Positioned(
  top: 660.0,
  left: 60.0,
  child: GestureDetector(
    onTap: () {
      launch('https://t.me/fluttermadrid');
    },
    child: Hero(
      tag: 'telegramleft',
      child: Icon(
        FontAwesomeIcons.telegram,
        color: Color(0xff0088cc),
        size: 60,
      ),
    )),
);

gmailWidget() => Positioned(
  top: 750.0,
  left: 60.0,
  child: GestureDetector(
    onTap: () {
      launch('mailto://fluttermadrid@gmail.com');
    },
    child: Hero(
      tag: 'gmailleft',
      child: Icon(
        FontAwesomeIcons.google,
        color: Color(0xffdb4a39),
        size: 60,
      ),
    ),
  ),
);