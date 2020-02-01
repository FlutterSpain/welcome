import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconTextLinkWidget extends StatelessWidget {

  final String url;
  final IconData icon;
  final int colorValue;
  final String heroTag;
  final String text;

  const IconTextLinkWidget({Key key, this.url, this.icon, this.colorValue, this.heroTag, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launch(url);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: heroTag,
            child: Icon(icon, color: Color(colorValue), size: 60,),
          ),
          SizedBox(height: 10),
          Text(text, style: Theme.of(context).textTheme.display1.copyWith(
            color: Color(colorValue)
          )),
        ],
      )
    );
  }
}