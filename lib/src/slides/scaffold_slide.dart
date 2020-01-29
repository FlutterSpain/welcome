import 'package:flutter/material.dart';

import 'package:welcome/src/slides/two_sides_slide.dart';
import 'package:welcome/src/widgets/hero_text_widget.dart';

class ScaffoldSlide extends StatelessWidget {
  const ScaffoldSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: MaterialApp(
        title: 'Welcome to Flutter Madrid',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Madrid'),
          ),
          
        ),
      ),
      rightChild: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeroTextWidget(tag: 'mateapp', text: 'MaterialApp(\n'),
            HeroTextWidget(tag: 'title', text: '  title: \'Creando Flutter Madrid\',\n',),
            Text(
              '  appBar: AppBar(title: Text(\'Flutter Madrid\')),\n',
              style: Theme.of(context).textTheme.body2,
            ),
            HeroTextWidget(tag: 'homefluttermadrid', text: '  home: FlutterMadrid(\n',),
            HeroTextWidget(tag: 'closefluttermadrid', text: '  )\n',),
            HeroTextWidget(tag: 'closemateapp', text: ')\n'),
          ],
        ),
      ),
    );
  }
}
 
