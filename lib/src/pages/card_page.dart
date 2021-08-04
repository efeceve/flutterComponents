import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
          _cardTipe1(),
          SizedBox(height: 30.0),
          _cardTipe2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipe1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Card Title'),
            subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancel')),
              TextButton(onPressed: () {}, child: Text('Ok')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipe2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://chiledescentralizado.cl/wp-content/uploads/2016/03/landscape-04.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('This is a beautiful landscape'))
        ],
      ),
    );
  }
}
