import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Endereço',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnderecoScreen(),
    );
  }
}

class EnderecoScreen extends StatefulWidget {
  @override
  _EnderecoScreenState createState() => _EnderecoScreenState();
}

class _EnderecoScreenState extends State<EnderecoScreen> {
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _cidadeController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Endereço'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              controller: _enderecoController,
              decoration: InputDecoration(
                labelText: 'Endereço',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _cidadeController,
              decoration: InputDecoration(
                labelText: 'Cidade',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _numeroController,
              decoration: InputDecoration(
                labelText: 'Número',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String endereco = _enderecoController.text;
                String cidade = _cidadeController.text;
                String numero = _numeroController.text;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Dados informados'),
                      content: Text(
                        'Endereço: $endereco\nCidade: $cidade\nNúmero: $numero',
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Fechar'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
