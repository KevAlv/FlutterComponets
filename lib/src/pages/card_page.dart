import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cards"),),
      body: _listView(),
          );
        }
      
        _listView() {
          return ListView(
            padding: EdgeInsets.all(10.0),
            children: <Widget>[
              _cardTipo1()
            ],
          );
        }

  _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Soy El Tiutlo"),
            subtitle: Text("Soy el subtitulo que ustedes veran en la pantallas"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Cancelar"),
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}