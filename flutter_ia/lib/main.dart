import 'package:flutter/material.dart';

void main() {
  runApp(Telapp());
}

class Telapp extends StatelessWidget {
  const Telapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: const Color.fromARGB(255, 179, 179, 179),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 300, height: 100, color: Colors.blue),
                Container(
                  width: 280,
                  height: 80,
                  color: Colors.red,
                  child: Text(
                    "Senai",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
              child: Text(
                "Senai - Mobile",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 50, height: 50, color: Colors.amber),
                Container(width: 50, height: 50, color: Colors.white),
                Container(width: 50, height: 50, color: Colors.grey),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print("Desenvolvimento Mobile 1");
              },
              child: Text("Mensagem"),
            ),
            // Adicionando funcionalidade de apagar mensagens
            ChatScreen(),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // Controlador do TextField
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];

  // Função para enviar a mensagem
  void sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add(_controller.text);  // Adiciona a nova mensagem
        _controller.clear();  // Limpa o campo de texto
      });
    }
  }

  // Função para limpar todas as mensagens
  void clearMessages() {
    setState(() {
      messages.clear();  // Limpa a lista de mensagens
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Exibição das mensagens
        Expanded(
          child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: index % 2 == 0
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.red : Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      messages[index],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        // Campo de entrada de mensagem e botão de envio
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    hintText: "Digite sua mensagem...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: sendMessage,
                color: Colors.blue,
              ),
            ],
          ),
        ),
        // Botão para limpar todas as mensagens
        ElevatedButton(
          onPressed: clearMessages,
          child: Text("Limpar mensagens"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,  // Substituindo o 'primary' por 'backgroundColor'
          ),
        ),
      ],
    );
  }
}
