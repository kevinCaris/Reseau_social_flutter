import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statut'),
      ),
      body: ListView.builder(
        itemCount:
            5, // Nombre fictif de publications, remplacez par vos données réelles
        itemBuilder: (context, index) {
          return buildStatusCard(); // Fonction pour construire une carte de statut
        },
      ),
    );
  }

  Widget buildStatusCard() {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  // Vous pouvez remplacer cette image par l'avatar réel de la personne
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                SizedBox(width: 8.0),
                Text(
                  'Nom de la personne',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              'Contenu de la publication ici. Vous pouvez y mettre du texte, des images, etc.',
            ),
            // Ajoutez d'autres widgets pour les likes, commentaires, etc.
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: StatusPage(),
  ));
}
