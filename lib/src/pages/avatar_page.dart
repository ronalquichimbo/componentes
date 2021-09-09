import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/236x/52/6f/38/526f385df3e72e64bb6ba787c395be5b.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          height: 1000,
          fit: BoxFit.cover,
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://testimoniodedios.altervista.org/wp-content/uploads/2020/03/Gran-descubrimiento-el-Sen%CC%83or-Jesu%CC%81s-regresara%CC%81-en-dos-formas.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
