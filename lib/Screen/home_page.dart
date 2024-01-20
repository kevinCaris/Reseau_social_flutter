import 'package:flutter/material.dart';
import 'package:myreseau/Screen/discution_page.dart';
import 'package:myreseau/Screen/messagerie_page.dart';
import 'package:myreseau/Screen/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            foregroundColor: Colors.red,
            child: Image.asset(
              "assets/logo.png",
              width: 70,
              height: 70,
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Explore",
            style: TextStyle(),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return SettingsPage();
              }));
            },
            style: IconButton.styleFrom(
              backgroundColor: const Color(0x3A333333),
            ),
            icon: const Icon(
              Icons.settings,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(20, (index) {
                  return Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(80, 122, 139, 185),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return MessageriePage();
                        }));
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          "assets/Avatar.png",
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: List.generate(10, (index) {
                return Container(
                  margin: const EdgeInsets.only(
                      top: 15, left: 20, right: 20, bottom: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE6EEFA),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 15, right: 15, bottom: 0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/Avatar.png",
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    'Anais KPADE',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 13, right: 13, bottom: 13),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/image2.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 200),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(73, 10, 10, 10),
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(30),
                                              bottomRight:
                                                  Radius.circular(30))),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(15),
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        child: Icon(
                                                            Icons.thumb_up,
                                                            size: 25,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        "120",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 15),
                                                  Row(
                                                    children: [
                                                      InkWell(
                                                        child: Icon(
                                                            Icons.favorite,
                                                            size: 25,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      Text(
                                                        "120",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              switch (index) {
                case 0:
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (_) {
                    return const HomePage();
                  }));

                  break;
                case 1:
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return DiscutionPage(index: index = 0);
                  }));
                  break;
                case 2:
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return DiscutionPage(
                      index: index = 1,
                    );
                  }));
                  break;
                case 3:
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return DiscutionPage(
                      index: index = 2,
                    );
                  }));
                default:
              }
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B3F99),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B3F99),
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.group,
              ),
              label: 'Groupes',
              backgroundColor: Color(0xFF1B3F99),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notification_add),
              label: 'Notification',
              backgroundColor: Color(0xFF1B3F99),
            )
          ]),
      /*bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const []),*/
    );
  }
}
