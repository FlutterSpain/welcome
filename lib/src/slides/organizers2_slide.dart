import 'package:flutter/material.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';
import 'package:welcome/src/widgets/left_side_widgets.dart';

class Organizers2Slide extends StatelessWidget {
  const Organizers2Slide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          logoWidget(),
          albertoWidget()
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
            HeroTextWidget(tag: 'organizers', text: '  organizers: [\n',),
            HeroTextWidget(tag: 'organizerAlberto', text: '    Alberto()\n',),
            HeroTextWidget(tag: 'organizerJaime', text: '    Jaime()\n',),
            HeroTextWidget(tag: 'organizersclosing', text: '  ],\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
