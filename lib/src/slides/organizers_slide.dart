import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';
import 'package:welcome/src/widgets/left_side_widgets.dart';

class OrganizersSlide extends StatelessWidget {
  const OrganizersSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          logoWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'alberto',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/images/alberto.png'),
                    height: 200,
                    width: 200,
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Alberto Chamorro',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Frontend developer en Accenture',
                      style: Theme.of(context).textTheme.display2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.twitter),
                        SizedBox(width: 8,),
                        Text('@achamorro_')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.google),
                        SizedBox(width: 8,),
                        Text('a.chamorro.ruiz@gmail.com')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.linkedin),
                        SizedBox(width: 8,),
                        Text('https://www.linkedin.com/in/alberto-chamorro-42b1b156/')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.github),
                        SizedBox(width: 8,),
                        Text('https://github.com/ach4m0/')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
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
            HeroTextWidget(tag: 'organizersclosing', text: '  ],\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
