import 'package:flutter/material.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';

class LogoSlide extends StatelessWidget {
  const LogoSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Center(
        child: Hero(
          tag: 'logoLeft',
          child: Image.asset('assets/images/logo_bigger.png'))
      ),
      rightChild: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroTextWidget(tag: 'fluttermadrid', text: 'FlutterMadrid(\n',),
            HeroTextWidget(tag: 'logofluttermadrid', text: '  logo: flutter_madrid.png\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
