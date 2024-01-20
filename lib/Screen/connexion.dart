import 'package:flutter/material.dart';
import 'package:myreseau/Screen/bienvenue_page.dart';
import 'package:myreseau/Screen/password_recovery_page.dart';

//connexion
class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 100),
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
                  margin: const EdgeInsets.only(
                      top: 8, bottom: 0, left: 25, right: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 4),
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
                        borderSide: const BorderSide(color: Color(0xFF2F51A2)),
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
                  margin: const EdgeInsets.only(
                      top: 15, bottom: 6, left: 25, right: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 4),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PasswordRecoveryPage(),
                              ));
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const PasswordRecoveryPage(),
                        ),
                      );
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
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) {
                          return const BienvenuePage();
                        }),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff1B3F99),
                    padding: const EdgeInsets.fromLTRB(40, 18, 40, 18),
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
                      fontSize: 1,
                      color: Color(0xff1B3F99),
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/google.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/apple-logo.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/facebook.png",
                        width: 30.0,
                        height: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Text(
                  "Pas de compte ? S’inscrire",
                  style: TextStyle(
                    color: Color(0xff1B3F99),
                    fontSize: 15,
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
