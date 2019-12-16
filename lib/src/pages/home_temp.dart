import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  List<Widget> lista = new List<Widget>();
  @override
  Widget build(BuildContext context) {
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + ' !'),
            subtitle:Text('Lista de items'),
            leading: Icon(Icons.access_alarms),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){ },
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
