import 'package:flutter/material.dart';
//bienvenu
class bienvenu extends StatelessWidget {
  const bienvenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE6EEFA),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BIENVENUE',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2F51A2),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'UserName',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF2F51A2),
                ),
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
