import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';
import 'package:welcome/src/widgets/left_side_widgets.dart';

class WebSlide extends StatelessWidget {
  const WebSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          logoWidget(),
          albertoWidget(),
          jaimeWidget(),
          meetupWidget(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
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
                )
              ),
              SizedBox(height: 10),
              Text('https://flutter.madrid', style: Theme.of(context).textTheme.display1.copyWith(
                color: Color(0xff02569b)
              )),
            ],
          ),
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
            HeroTextWidget(tag: 'web', text: '  web: \'https://flutter.madrid\',\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
