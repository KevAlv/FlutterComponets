import 'package:componentes/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    print(MenuProvider.opciones);
    return ListView(
      children: listaItems(),
    );
  }

  List<Widget> listaItems() {
    return [
      ListTile(
        title: Text("data"),
      ),
      ListTile(
        title: Text("data"),
      )
    ];
  }
}
