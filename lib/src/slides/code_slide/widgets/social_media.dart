import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia {
  twitter,
  github,
  telegram,
  meetup,
  google,
  linkedin,
  web
}


class SocialMediaIcon extends Icon {
  final SocialMedia data;
  final double size;
  SocialMediaIcon(this.data, {this.size}) : super(iconData(data), color: colorData(data), size:size);

  static IconData iconData(SocialMedia data) {
    switch (data) {
      case SocialMedia.twitter:
        return FontAwesomeIcons.twitter;
      case SocialMedia.github:
        return FontAwesomeIcons.github;
      case SocialMedia.telegram:
        return FontAwesomeIcons.telegram;
      case SocialMedia.meetup:
        return FontAwesomeIcons.meetup;
      case SocialMedia.google:
        return FontAwesomeIcons.google;
      case SocialMedia.linkedin:
        return FontAwesomeIcons.linkedin;
      case SocialMedia.web:
        return FontAwesomeIcons.globeEurope;
    }
  }

  static Color colorData(SocialMedia data) {
    switch (data) {
      case SocialMedia.twitter:
        return Color(0xff00acee);
      case SocialMedia.github:
        return Color(0xff24292e);
      case SocialMedia.telegram:
        return  Color(0xff0088cc);
      case SocialMedia.meetup:
        return Color(0xffe0393e);
      case SocialMedia.google:
        return Color(0xffdb4a39);
      case SocialMedia.linkedin:
        return  Color(0xff0e76a8);
      case SocialMedia.web:
        return Color(0xFF02569b);
    }
  }
}

class FlutterSocialMediaButton extends StatelessWidget {
  final SocialMedia socialMedia;
  final double size;

  const FlutterSocialMediaButton({Key key, this.socialMedia, this.size = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: socialMedia.toString(),
      child: SocialNavigator(
        child: socialMedia == SocialMedia.web
            ? ClipRRect(
                borderRadius: BorderRadius.circular(size / 2),
                child: Image.asset(
                  'assets/images/icon_flutter_madrid.jpg',
                  width: size,
                  height: size,
                ),
              )
            : SocialMediaIcon(socialMedia, size: size),
      ),
    );
  }
}

class SocialMediaTile extends StatelessWidget {
  final SocialMedia socialMedia;

  const SocialMediaTile(
    this.socialMedia, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SocialNavigator(
        socialMedia: socialMedia,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlutterSocialMediaButton(socialMedia: socialMedia, size: 70),
            SizedBox(height: 10),
            Text(socialTitleMap[socialMedia],
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(color: SocialMediaIcon(socialMedia).color)),
          ],
        ));
  }
}

class SocialNavigator extends StatelessWidget {
  final Widget child;
  final SocialMedia socialMedia;

  const SocialNavigator({Key key, this.child, this.socialMedia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: launchUrl, child: child);
  }

  launchUrl() async {
    final url = socialUrlMap[socialMedia];
    if (url != null && await canLaunch(url)) launch(url);
  }
}

final socialUrlMap = {
  SocialMedia.meetup: 'https://www.meetup.com/es-ES/Flutter-Madrid',
  SocialMedia.twitter: 'https://twitter.com/FlutterMadrid',
  SocialMedia.telegram: 'https://t.me/fluttermadrid',
  SocialMedia.google: 'mailto://fluttermadrid@gmail.com',
  SocialMedia.web: 'https://flutter.madrid'
};

final socialTitleMap = {
  SocialMedia.meetup: 'https://www.meetup.com/es-ES/Flutter-Madrid',
  SocialMedia.twitter: '@FlutterMadrid',
  SocialMedia.telegram: '@FlutterMadrid',
  SocialMedia.google: 'fluttermadrid@gmail.com',
  SocialMedia.web: 'https://flutter.madrid'
};
