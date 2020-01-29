import 'package:flutter/material.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';

class MeetupSlide extends StatelessWidget {
  const MeetupSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      rightChild: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroTextWidget(tag: 'fluttermadrid', text: 'FlutterMadrid(\n',),
            HeroTextWidget(tag: 'logofluttermadrid', text: '  logo: flutter_madrid.png\n',),
            HeroTextWidget(tag: 'organizers', text: '  organizers: [\n',),
            HeroTextWidget(tag: 'organizerAlberto', text: '    Alberto()\n',),
            HeroTextWidget(tag: 'organizerJaime', text: '    Jaime()\n',),
            HeroTextWidget(tag: 'organizersclosing', text: '  ],\n',),
            HeroTextWidget(tag: 'meetup', text: '  meetup: \'https://www.meetup.com/es-ES/Flutter-Madrid\',\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
