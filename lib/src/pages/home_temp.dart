import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems(),
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
      );
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((String item) {
      return Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(item + '!'),
            subtitle: Text('Subtítulo'),
            trailing: Icon(Icons.arrow_back),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
