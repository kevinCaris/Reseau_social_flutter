import 'package:flutter/material.dart';
import 'package:myreseau/Screen/connexion.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});


  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return const Connexion();
      }),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE6EEFA),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 200.0,
                height: 200.0,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(30),
        color: const Color(0xFFE6EEFA),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'APPS NAME',
              style: TextStyle(fontSize: 30, color: Color(0xFF2F51A2), fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}