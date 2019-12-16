import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/utils/icono_string_util.dart';
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
    return FutureBuilder(
      future: MenuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((opt) {
      final WidgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context,opt['ruta']);
          // final route = MaterialPageRoute(builder: (context)=> AlertPage());
          // Navigator.push(context, route);
        },
      );
      opciones..add(WidgetTemp)..add(Divider());
    });
    return opciones;
  }
}
