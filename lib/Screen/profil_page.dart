import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Utilisateur'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage('lien-de-limage.jpg'),
              ),
            ),
            Text(
              'Nom Complet',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            UserDetailsWidget(),
            SizedBox(height: 20),
            UserActionsWidget(),
          ],
        ),
      ),
    );
  }
}

class UserDetailsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informations Personnelles',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text('Date de Naissance: XX/XX/XXXX'),
          Text('Email: utilisateur@mail.com'),
        ],
      ),
    );
  }
}

class UserActionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            // Action lorsqu'on appuie sur le bouton S'Abonner
          },
          child: Text('S\'Abonner'),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Action lorsqu'on appuie sur le bouton Le Suivre
          },
          child: Text('Le Suivre'),
        ),
      ],
    );
  }
}
