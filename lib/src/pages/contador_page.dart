import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = TextStyle(fontSize: 25, color: Color.fromARGB(255, 79, 198, 188), fontWeight: FontWeight.w700);
  // final TextStyle _textColor = new TextStyle(decorationColor: Colors.white);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Counter'),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade300,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de Taps', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero), backgroundColor: Colors.green.shade400,),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove), backgroundColor: Colors.red.shade400,),
        SizedBox(width: 5.0,),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add), backgroundColor: Colors.cyan.shade400),
      ],
    );
  }
    void _agregar(){
      setState(() =>  _conteo++);
    }

    void _sustraer(){
      
      setState(() => _conteo--);
    }
    void _reset(){setState(() => _conteo = 0);}
}
