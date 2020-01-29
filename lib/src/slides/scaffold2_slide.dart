import 'package:flutter/material.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';

class Scaffold2Slide extends StatelessWidget {
  const Scaffold2Slide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      rightChild: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroTextWidget(tag: 'mateapp', text: 'MaterialApp(\n'),
            HeroTextWidget(tag: 'title', text: '  title: \'Creando Flutter Madrid\',\n',),
            HeroTextWidget(tag: 'banner', text: '  debugShowCheckedModeBanner: false,\n',),
            HeroTextWidget(tag: 'homefluttermadrid', text: '  home: FlutterMadrid(\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: '  )\n',),
            HeroTextWidget(tag: 'closemateapp', text: ')\n'),
          ],
        ),
      ),
    );
  }
}
