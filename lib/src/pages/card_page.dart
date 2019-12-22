import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: _listView(),
    );
  }

  _listView() {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 30,
        ),
        _cardTipo2()
      ],
    );
  }

  _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Soy El Tiutlo"),
            subtitle:
                Text("Soy el subtitulo que ustedes veran en la pantallas"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)) ,
      child: Column(
        children: <Widget>[
          FadeInImage(
              image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM-970-80.jpg') ,
              placeholder:AssetImage('assets/jar-loading.gif') ,
              fadeInDuration:Duration(milliseconds:200),
              height: 300.0,
              fit:BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text("no se"))
        ],
      ),
    );
  }
}
