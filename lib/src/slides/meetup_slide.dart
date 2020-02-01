import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';
import 'package:welcome/src/widgets/icon_text_link_widget.dart';
import 'package:welcome/src/widgets/left_side_widgets.dart';

class MeetupSlide extends StatelessWidget {
  const MeetupSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          logoWidget(),
          albertoWidget(),
          jaimeWidget(),
          IconTextLinkWidget(
            url: 'https://www.meetup.com/es-ES/Flutter-Madrid',
            heroTag: 'meetupleft',
            icon: FontAwesomeIcons.meetup,
            colorValue: 0xffe0393e,
            text: 'https://www.meetup.com/es-ES/Flutter-Madrid',
          )
        ]
      ), 
      rightChild: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroTextWidget(tag: 'fluttermadrid', text: 'FlutterMadrid(\n',),
            HeroTextWidget(tag: 'logofluttermadrid', text: '  logo: flutter_madrid.png\n',),
            HeroTextWidget(tag: 'organizers', text: '  organizers: [ Alberto(), Jaime() ],\n',),
            HeroTextWidget(tag: 'meetup', text: '  meetup: \'https://www.meetup.com/es-ES/Flutter-Madrid\',\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
