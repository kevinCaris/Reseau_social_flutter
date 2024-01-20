import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                "assets/Avatar+.png",
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(width: 16.0),
            Text('Paramètres'),
          ],
        ),
        actions: [
          IconButton(
            color: Colors.white,
            iconSize: 25,
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Ajoutez ici la logique pour gérer les notifications
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Section Avatar et Notifications
          // Container(
          //   padding: EdgeInsets.all(16.0),
          //   color: Colors.blue,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       CircleAvatar(
          //         backgroundColor: Colors.white,
          //         // Ajoutez ici la logique pour récupérer l'avatar de l'utilisateur
          //       ),
          //       IconButton(
          //         icon: Icon(
          //           Icons.notifications,
          //           color: Colors.white,
          //         ),
          //         onPressed: () {
          //           // Ajoutez ici la logique pour gérer les notifications
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          // Section Options
          buildSection('Options', context, [
            {'label': 'Notifications', 'icon': Icons.notifications},
            {'label': 'Mode Thème', 'icon': Icons.color_lens},
            {'label': 'Confidentialité', 'icon': Icons.security},
          ]),
          // Section Compte
          buildSection('Compte', context, [
            {'label': 'Informations Personnelles', 'icon': Icons.person},
            {'label': 'Langue', 'icon': Icons.language},
            {'label': 'Pays', 'icon': Icons.location_on},
            {'label': 'Déconnexion', 'icon': Icons.exit_to_app},
          ]),
          // Section Générale et Social
          buildSection('Général et Social', context, [
            {'label': 'Twiter', 'icon': Icons.water, 'color': Colors.blue},
            {
              'label': 'Instagram',
              'icon': Icons.whatshot_sharp,
              'color': Colors.pink
            },
            {'label': 'Vidéo', 'icon': Icons.videocam, 'color': Colors.red},
            // Ajoutez d'autres éléments selon vos besoins
          ]),
        ],
      ),
    );
  }

  Widget buildSection(
      String title, BuildContext context, List<Map<String, dynamic>> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ...items.map((item) {
          Color itemColor = item['color'] ?? Colors.black;
          return ListTile(
            title: Text(
              item['label'],
              style: TextStyle(color: itemColor),
            ),
            leading: Icon(
              item['icon'],
              color: itemColor,
            ),
            onTap: () {
              // Ajoutez ici la logique pour gérer la navigation vers chaque élément
            },
          );
        }),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SettingsPage(),
  ));
}
