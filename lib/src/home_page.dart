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
    return FutureBuilder(
      future: MenuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: listaItems(snapshot.data),
        );
      },
    );
  }

  List<Widget> listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];
    data.forEach((opt){
      final WidgetTemp = ListTile(
        title: Text(opt['texto']),
        leading:Icon(Icons.access_alarm,color: Colors.black) ,
        trailing:Icon(Icons.access_alarm,color: Colors.blue) ,
        onTap: (){},
      );
      opciones..add(WidgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}
