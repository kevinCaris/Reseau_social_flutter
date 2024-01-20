import 'package:flutter/material.dart';
//recuperation etape 1
class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'RECUPERATION',
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1B3F99)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            const Text(
              'Saisissez votre Email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(16.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Color(0xFF2F51A2)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique de récupération du mot de passe
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff1B3F99),
                padding: EdgeInsets.fromLTRB(40, 18, 40, 18),
              ),
              child: Text(
                'Suivant',
                style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Nextpage
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'RECUPERATION',
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1B3F99)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            const Text(
              'Confirmez votre compte',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
              'Un code de confirmation vous a été envoyé. Saisissez-le pour récupérer votre compte.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(16.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Color(0xFF2F51A2)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour passer à l'étape suivante
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage2(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff1B3F99),
                padding: EdgeInsets.fromLTRB(40, 18, 40, 18),
              ),
              child: const Text('Suivant',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),

            TextButton(
              onPressed: () {
                // Ajoutez ici la logique pour gérer le cas "Code non reçu"
                print('Code non reçu');
              },
              style: TextButton.styleFrom(
                primary: Colors.white24,
                padding: EdgeInsets.fromLTRB(40, 18, 40, 18),
              ),
              child: Text('Code non reçu',style: TextStyle(fontSize: 24, color:Color(0xff1B3F99),fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Nextpage
class NextPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'RECUPERATION',
              style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1B3F99)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            const Text(
              'Saisissez votre nouveau mot de passe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            const Text(
              'mot de passe',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.all(16.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Color(0xFF2F51A2)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ajoutez ici la logique pour passer à l'étape suivante
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage2(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xff1B3F99),
                padding: EdgeInsets.fromLTRB(40, 18, 40, 18),
              ),
              child: const Text('Suivant',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),

          ],
        ),
      ),
    );
  }
}