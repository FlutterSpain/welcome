import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:welcome/src/slides/code_slide/widgets/members.dart';
import 'package:welcome/src/slides/code_slide/widgets/organizer.dart';
import 'package:welcome/src/slides/code_slide/widgets/social_media.dart';
import 'package:welcome/src/slides/code_slide/widgets/static_logo.dart';
import 'package:welcome/src/slides/two_sides_slide.dart';

enum CodeState {
  material,
  logo,
  alberto,
  jaime,
  meetup,
  web,
  twitter,
  telegram,
  gmail,
  github,
  members
}

class CodeSlide extends StatelessWidget {
  final CodeState state;

  const CodeSlide({Key key, this.state = CodeState.material}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Padding(
        child: Stack(
          children: <Widget>[
            app,
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 80),
                child: stack(context),
              ),
            ),
          ],
        ),
        padding:
            state == CodeState.material ? EdgeInsets.zero : EdgeInsets.all(80),
      ),
      rightChild: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'code',
              child: HighlightView(
                code,
                padding: EdgeInsets.zero,
                language: 'dart',
                theme: madridTheme,
                textStyle: TextStyle(fontSize: 22, height: 1.5),
              ),
            ),
            Hero(
              tag: 'code-end',
              child: HighlightView('   ),\n)',
                padding: EdgeInsets.zero,
                language: 'dart',
                theme: madridTheme,
                textStyle: TextStyle(fontSize: 22, height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget stack(BuildContext context) {
    switch (state) {
      case CodeState.material:
      case CodeState.logo:
      case CodeState.members:
        return Container();
      case CodeState.alberto:
        return Organizer(data: Organizers.alberto);
      case CodeState.jaime:
        return Organizer(data: Organizers.jaime);
      case CodeState.meetup:
        return SocialMediaTile(SocialMedia.meetup);
      case CodeState.web:
        return SocialMediaTile(SocialMedia.web);
      case CodeState.twitter:
        return SocialMediaTile(SocialMedia.twitter);
      case CodeState.telegram:
        return SocialMediaTile(SocialMedia.telegram);
      case CodeState.gmail:
        return SocialMediaTile(SocialMedia.google);
      case CodeState.github:
        return SocialMediaTile(SocialMedia.github);
    }
  }

  Widget get app {
    if (state == CodeState.material)
      return MaterialApp(
        title: 'Welcome to Flutter Madrid',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Madrid'),
          ),
        ),
      );

    else if (state == CodeState.logo)
      return Center(child: StaticLogo(width: 450));

    else if (state == CodeState.alberto)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StaticLogo.small(),
        ],
      );
      
    else if (state == CodeState.jaime)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StaticLogo.small(),
          SizedBox(height: 40),
          Row(
            children: <Widget>[
              OrganizerAvatar(data: Organizers.alberto, radius: 40),
            ],
          ),
        ],
      );
    else {
      List<Widget> socialMedia = [];

      if (state.index > CodeState.meetup.index)
        socialMedia
            .add(FlutterSocialMediaButton(socialMedia: SocialMedia.meetup));
      if (state.index > CodeState.web.index)
        socialMedia.add(FlutterSocialMediaButton(socialMedia: SocialMedia.web));
      if (state.index > CodeState.twitter.index)
        socialMedia
            .add(FlutterSocialMediaButton(socialMedia: SocialMedia.twitter));
      if (state.index > CodeState.telegram.index)
        socialMedia
            .add(FlutterSocialMediaButton(socialMedia: SocialMedia.telegram));
      if (state.index > CodeState.gmail.index)
        socialMedia
            .add(FlutterSocialMediaButton(socialMedia: SocialMedia.google));
      if (state.index > CodeState.github.index)
        socialMedia
            .add(FlutterSocialMediaButton(socialMedia: SocialMedia.github));

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          StaticLogo.small(),
          SizedBox(height: 40),
          Row(
            children: <Widget>[
              OrganizerAvatar(data: Organizers.alberto, radius: 40),
              SizedBox(width: 20),
              OrganizerAvatar(data: Organizers.jaime, radius: 40),
            ],
          ),
          SizedBox(height: 16),
          if (state == CodeState.members)
            Expanded(child: Members())
          else
            Spacer(),
          Row(
              children: socialMedia
                  .map((item) => Padding(
                        padding: EdgeInsets.only(right: 32),
                        child: item,
                      ))
                  .toList())
        ],
      );
    }
  }

  String get code {
    if (state == CodeState.material)
      return '''MaterialApp(
  title: 'Flutter Madrid',
  appBar: AppBar(title: Text('Flutter Madrid')),
  home: FlutterMadrid(''';

    String flutterMadrid = '''MaterialApp(
  title: 'Flutter Madrid',
  home: FlutterMadrid(
    logo: 'logo_madrid.png',''';

    if (state == CodeState.alberto)
      flutterMadrid += '\n    organizers: [ Alberto() ],';

    if (state.index >= CodeState.jaime.index)
      flutterMadrid += '\n    organizers: [ Alberto(), Jaime() ],';
    if (state.index >= CodeState.meetup.index)
      flutterMadrid += 
          '\n    meetup: \'https://www.meetup.com/es-ES/Flutter-Madrid\',';
    if (state.index >= CodeState.web.index)
      flutterMadrid += '\n    web: \'https://flutter.madrid\',';
    if (state.index >= CodeState.twitter.index)
      flutterMadrid += '\n    twitter: \'@FlutterMadrid\',';
    if (state.index >= CodeState.telegram.index)
      flutterMadrid += '\n    telegram: \'Flutter Madrid\',';
    if (state.index >= CodeState.gmail.index)
      flutterMadrid += '\n    email: \'fluttermadrid@gmail.com\',';
    if (state.index >= CodeState.github.index)
      flutterMadrid += '\n    github: \'https://github.com/flutter-madrid/\',';
    if (state.index >= CodeState.members.index)
      flutterMadrid += '\n    members: MeetupMembers.list,';
    return flutterMadrid;
  }
}

const madridTheme = {
  'comment': TextStyle(color: Color(0xff7285b7)),
  'quote': TextStyle(color: Color(0xff7285b7)),
  'variable': TextStyle(color: Color(0xffff9da4)),
  'template-variable': TextStyle(color: Color(0xffff9da4)),
  'tag': TextStyle(color: Color(0xffff9da4)),
  'name': TextStyle(color: Color(0xffff9da4)),
  'selector-id': TextStyle(color: Color(0xffff9da4)),
  'selector-class': TextStyle(color: Color(0xffff9da4)),
  'regexp': TextStyle(color: Color(0xffff9da4)),
  'deletion': TextStyle(color: Color(0xffff9da4)),
  'number': TextStyle(color: Color(0xffffc58f)),
  'built_in': TextStyle(color: Color(0xffffc58f)),
  'builtin-name': TextStyle(color: Color(0xffffc58f)),
  'literal': TextStyle(color: Color(0xffffc58f)),
  'type': TextStyle(color: Color(0xffffc58f)),
  'params': TextStyle(color: Color(0xffffc58f)),
  'meta': TextStyle(color: Color(0xffffc58f)),
  'link': TextStyle(color: Color(0xffffc58f)),
  'attribute': TextStyle(color: Color(0xffffeead)),
  'string': TextStyle(color: Colors.white70), //TODO: CHECK WHY ONLY STRING WORKS
  'symbol': TextStyle(color: Color(0xffd1f1a9)),
  'bullet': TextStyle(color: Color(0xffd1f1a9)),
  'addition': TextStyle(color: Color(0xffd1f1a9)),
  'title': TextStyle(color: Color(0xffbbdaff)),
  'section': TextStyle(color: Color(0xffbbdaff)),
  'keyword': TextStyle(color: Color(0xffebbbff)),
  'selector-tag': TextStyle(color: Color(0xffebbbff)),
  'root':
      TextStyle(backgroundColor: Colors.transparent, color: Color(0xffffffff)),
  'emphasis': TextStyle(fontStyle: FontStyle.italic),
  'strong': TextStyle(fontWeight: FontWeight.bold),
};
