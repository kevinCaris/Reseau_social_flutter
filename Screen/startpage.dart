import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
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
        padding: EdgeInsets.all(30),
        color: Color(0xFFE6EEFA),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'APPS NAME',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF2F51A2),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
