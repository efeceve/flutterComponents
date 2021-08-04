import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar Page'), actions: [
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://efeceve.github.io/curriculum/assets/img/profile.jpg'),
            radius: 30.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('FC'),
            backgroundColor: Colors.purpleAccent,
          ),
        )
      ]),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://efeceve.github.io/curriculum/assets/img/profile.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
