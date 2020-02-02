import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:welcome/src/slides/code_slide/widgets/social_media.dart';



class OrganizerData {
  final String id;
  final String name;
  final String jobDescription;
  final String imageAssetsUrl;
  final Map<SocialMedia, String> socialMedia;

  OrganizerData(
      {this.id, this.name, this.jobDescription, this.imageAssetsUrl, this.socialMedia});
}

class Organizers {
  static OrganizerData alberto = OrganizerData(
      id: 'alberto',
      name: 'Alberto Chamorro',
      imageAssetsUrl: 'assets/images/alberto.png',
      jobDescription: 'Front-end specialist en Accenture',
      socialMedia:
      {
        SocialMedia.twitter: '@achamorro_',
        SocialMedia.google: 'a.chamorro.ruiz@gmail.com',
        SocialMedia.linkedin: 'https://www.linkedin.com/in/alberto-chamorro/',
        SocialMedia.github: 'https://github.com/ach4m0/'
      }
  );

  static OrganizerData jaime = OrganizerData(
      id: 'jaime',
      name: 'Jaime Blasco',
      imageAssetsUrl: 'assets/images/jaime.jpg',
      jobDescription: 'Software Engineer en Mox Health',
      socialMedia:
      {
        SocialMedia.twitter: '@JamesBlasco',
        SocialMedia.google: 'hi@jaimeblasco.com',
        SocialMedia.linkedin: 'https://www.linkedin.com/in/jaimeblascoandres/',
        SocialMedia.github: 'https://github.com/jamesblasco/'
      }
  );
}

class OrganizerAvatar extends StatelessWidget {
  final OrganizerData data;
  final double radius;

  const OrganizerAvatar(  {Key key, this.data, this.radius = 100}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'image-${data.id}',
      child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: AssetImage(data.imageAssetsUrl),
          )
      ),
    );
  }

}


class Organizer extends StatelessWidget {
  final OrganizerData data;

  const Organizer({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        OrganizerAvatar(radius: 100, data: data),
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.name,
                style: Theme
                    .of(context)
                    .textTheme
                    .display1,
              ),
              Text(
                data.jobDescription,
                style: Theme
                    .of(context)
                    .textTheme
                    .display2,
              ),
              SizedBox(height: 10),
              ...data.socialMedia.map((type, title) =>
                  MapEntry(type, Padding(
                    padding: EdgeInsets.only(bottom: 8),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SocialMediaIcon(type),
                          SizedBox(width: 8),
                          Text(title, style: Theme
                              .of(context)
                              .textTheme
                              .caption,)
                        ],
                      )
                  ))
              ).values.toList()
            ],
          ),)
        ,
      ]
      ,
    );
  }

}