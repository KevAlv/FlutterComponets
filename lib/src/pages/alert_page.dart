import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina de la Alerta"),
      ),
      body:Center(
        child: RaisedButton(
          child: Text("Mostrar Alerta"),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=>_mostrarAlerta(context),
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.restaurant),
      ),
    );
  }
}


void _mostrarAlerta(context){
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
        title: Text("Titulo de la notificacion"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("Contenido"),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: <Widget>[
          FlatButton(child: Text("Cancelar"),
          onPressed: ()=>Navigator.of(context).pop(),
          ),
              FlatButton(child: Text("Ok"),
          onPressed: ()=>Navigator.of(context).pop(),
          ),
        ],
      );
    }
  );
}