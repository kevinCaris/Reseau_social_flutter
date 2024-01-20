import 'package:flutter/material.dart';

class DiscutionPage extends StatefulWidget {
  const DiscutionPage({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<DiscutionPage> createState() => _DiscutionPageState();
}

class _DiscutionPageState extends State<DiscutionPage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: 'Groupes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'Appels',
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: const [
                DiscussionTab(),
                GroupeTab(),
                AppelTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DiscussionTab extends StatelessWidget {
  const DiscussionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Nombre de discussions à afficher
      itemBuilder: (context, index) {
        return const DiscussionItem(
          avatar: 'url_avatar',
          username: 'Nom de l\'utilisateur',
          message: 'Message de l\'utilisateur',
          time: '12:34', // Heure de la discussion
        );
      },
    );
  }
}

class DiscussionItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String message;
  final String time;

  const DiscussionItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
            radius: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(message),
            ],
          ),
          const Spacer(),
          Text(time),
        ],
      ),
    );
  }
}

//groupe
class GroupeTab extends StatelessWidget {
  const GroupeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Nombre de discussions à afficher
      itemBuilder: (context, index) {
        return const GroupItem(
          avatar: 'url_avatar',
          username: 'Nom de Groupe',
          message: 'Message de Groupe',
          time: '14:34', // Heure de la discussion
        );
      },
    );
  }
}

class GroupItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String message;
  final String time;

  const GroupItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
            radius: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(message),
            ],
          ),
          const Spacer(),
          Text(time),
        ],
      ),
    );
  }
}

//appels
class AppelTab extends StatelessWidget {
  const AppelTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Nombre de discussions à afficher
      itemBuilder: (context, index) {
        return const AppelItem(
          avatar: 'url_avatar',
          username: 'Nom de Groupe',
          message: 'Message de Groupe',
          time: '14:34', // Heure de la discussion
        );
      },
    );
  }
}

class AppelItem extends StatelessWidget {
  final String avatar;
  final String username;
  final String message;
  final String time;

  const AppelItem({
    Key? key,
    required this.avatar,
    required this.username,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatar),
            radius: 30,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(message),
            ],
          ),
          const Spacer(),
          Text(time),
        ],
      ),
    );
  }
}
