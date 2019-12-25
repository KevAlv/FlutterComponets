import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  ListaPage({Key key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumero = new List();
  int _ultimoItem = 0;
  bool _isLoading= false;
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    _agregar10();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _crearListas(),
    );
  }

  _crearListas() {
    return RefreshIndicator(
      onRefresh:obtenerPagina1,
          child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNumero.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = _listaNumero[index];
          return FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }

  Future<Null> obtenerPagina1(){
        final duration = new Duration(seconds:2);
    new Timer(duration, (){
      _listaNumero.clear();
      _ultimoItem++;
      _agregar10();
    });
    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 0; i < 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
    }
    setState(() {});
  }

  Future fetchData() async{
      _isLoading=true;
    setState(() {
    });
    final duration = new Duration(seconds:2);
    new Timer(duration, respuestaHTTP);
  }


void respuestaHTTP(){
    _isLoading=false;
    _agregar10();
}
}
