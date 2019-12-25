import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 10;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwith(),
            Divider(),
            Expanded(child: _crearImagen())
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      label: 'Tamano de la imagen',
      value: _valorSlider,
      min: 5.0,
      max: 400.0,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://cdn.imgbin.com/16/10/0/imgbin-batman-aquaman-diana-prince-the-flash-superman-batman-dc-batman-G6e3UghyUhDdR7NAY0MBErJYp.jpg'),
    );
  }

  _crearCheckBox() {
    return CheckboxListTile(
      title: Text("Bloquear Slider"),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = !_bloquearCheck;
        });
      },
    );
  }

    _crearSwith() {
    return SwitchListTile(
      title: Text("Bloquear Slider"),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = !_bloquearCheck;
        });
      },
    );
  }
}
