import 'package:flutter/material.dart';
import 'package:myreseau/Screen/home_page.dart';

class MessageriePage extends StatelessWidget {
  const MessageriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF5FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFEFF5FE),
        leading: CircleAvatar(
          //radius: 50,
          child: Image.asset('assets/Avatar.png'),
        ),
        title: const ListTile(
          title: Text(
            'Nom de l\'utilisateur',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Time de l\'utilisateur',
            style: TextStyle(fontSize: 10),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return const HomePage();
              }));
            },
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xFF5790DF),
            ),
            icon: const Icon(Icons.close),
            color: Colors.white,
            iconSize: 25,
          ),
        ],
        // SizedBox(height: 16),
      ),
      body: Expanded(
        child: ListView(
          children: const [
            // Messages existants
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
            MessageWidget(sender: 'Moi', message: 'Salut, comment ça va ?'),
            MessageWidget(sender: 'Utilisateur', message: 'Bonjour !'),
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(10),
        child: MessageInputField(),
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String sender;
  final String message;

  const MessageWidget({
    Key? key,
    required this.sender,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment:
            sender == 'Moi' ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: sender == 'Moi' ? Colors.blue : Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class MessageInputField extends StatelessWidget {
  const MessageInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            child: Row(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Entrez votre message...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {
              // Logique pour envoyer le message
            },
            icon: const Icon(Icons.send),
          ),
        ],
      ),
    );
  }
}
