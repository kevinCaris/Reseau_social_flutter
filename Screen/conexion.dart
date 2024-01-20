import 'package:flutter/material.dart';

//connexion
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Connexion',
                  style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1B3F99)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                /*  const Text(
                  'Email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),*/
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
                    controller: _emailController,
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
                  ),
                ),
                const SizedBox(height: 20),
                /*const Text(
                  'Mot de passe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),*/
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
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.all(16.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          print('Mot de passe oublié');
                        },
                        child: const Icon(Icons.help),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Add logic for "Mot de passe oublié"
                      print('Mot de passe oublié');
                    },
                    child: const Text('Mot de passe oublié?'),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Process the form data
                      String email = _emailController.text;
                      String password = _passwordController.text;
                      print('Email: $email');
                      print('Password: $password');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff1B3F99),
                    padding: const EdgeInsets.fromLTRB(20, 12, 20, 12123),
                  ),
                  child: const Text(
                    'Connexion',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Connexion avec',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff1B3F99),
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.chrome_reader_mode),
                      onPressed: () {
                        print('Connexion avec Google');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.facebook),
                      onPressed: () {
                        print('Connexion avec Facebook');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.apple),
                      onPressed: () {
                        print('Connexion avec Facebook');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Pas de compte ? S’inscrire",
                  style: TextStyle(
                    color: Color(0xff1B3F99),
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration
                        .underline, // Souligner le texte pour indiquer que c'est un lien
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
