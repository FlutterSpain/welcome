import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          albertoWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'jaime',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: AssetImage('assets/images/jaime.jpg'),
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
                      'Jaime Blasco',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Software Engineer en Mox Health',
                      style: Theme.of(context).textTheme.display2,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.twitter, color: Color(0xff00acee),),
                        SizedBox(width: 8,),
                        Text('@JamesBlasco', style: Theme.of(context).textTheme.caption,)
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.google, color: Color(0xffdb4a39)),
                        SizedBox(width: 8,),
                        Text('jaimeblasco97@gmail.com', style: Theme.of(context).textTheme.caption,)
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.linkedin, color: Color(0xff0e76a8)),
                        SizedBox(width: 8,),
                        Text(
                          'https://www.linkedin.com/in/jaimeblascoandres/',
                          style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.github, color: Color(0xff24292e),),
                        SizedBox(width: 8,),
                        Text('https://github.com/jamesblasco', style: Theme.of(context).textTheme.caption,)
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
            HeroTextWidget(tag: 'closefluttermadrid', text: ')\n',),
          ],
        ),
      ),
    );
  }
}
