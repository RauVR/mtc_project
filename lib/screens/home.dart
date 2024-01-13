import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _textEditingController = TextEditingController();
  String _capturedValue = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Caja de Texto Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(labelText: 'Ingrese su texto'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Capturar el valor de la caja de texto
                setState(() {
                  _capturedValue = _textEditingController.text;
                });
              },
              child: Text('Capturar Valor'),
            ),
            SizedBox(height: 20),
            Text('Valor Capturado: $_capturedValue'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Liberar el controlador cuando ya no se necesite
    _textEditingController.dispose();
    super.dispose();
  }


}
