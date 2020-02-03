import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;
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
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Column(
      children: <Widget>[
        Slider(
          activeColor: Colors.indigoAccent,
          label: 'Tamaño de la imagen',
          value: _valueSlider,
          min: 10.0,
          max: 400.0,
          onChanged: _bloquearCheck
              ? null
              : (value) {
                  setState(() {
                    _valueSlider = value;
                  });
                },
        ),
        Container(
          alignment: Alignment.center,
          child: Text('${_valueSlider.round()}'),
        )
      ],
    );
  }

  Widget _crearImagen() {
    return Image(
      width: _valueSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
        'https://p7.hiclipart.com/preview/992/97/208/batman-superhero-legion-of-super-heroes-character-breakfast.jpg',
      ),
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (newValue) {
    //     setState(() => _bloquearCheck = newValue);
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (newValue) {
        setState(() => _bloquearCheck = newValue);
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (newValue) {
        setState(() => _bloquearCheck = newValue);
      },
    );
  }
}
