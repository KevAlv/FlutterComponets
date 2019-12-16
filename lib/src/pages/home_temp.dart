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
      lista..add(tempWidget) 
           ..add(Divider());
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return lista;
  }
}
