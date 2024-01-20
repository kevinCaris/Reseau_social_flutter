import 'package:flutter/material.dart';

//inscription
class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  bool isAccepted = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomPrenomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'INSCRIPTION',
                    style: TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1B3F99)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  Container(
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
                      controller: _nomPrenomController,
                      decoration: InputDecoration(
                        labelText: 'Nom-Prénom',
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
                          return 'Please enter your name et prénom';
                        }
                        return null;
                      },
                    ),),
                  const SizedBox(height: 30),
                  Container(
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
                    ),),
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Checkbox(
                        value: isAccepted,
                        onChanged: (value) {
                          setState(() {
                            isAccepted = value ?? false;
                          });
                        },
                      ),
                      const Text('Lu et approuvé Service & Condition'),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate() && isAccepted) {
                        // Process the form data
                        String nomPrenom = _nomPrenomController.text;
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        print('Nom prenom: $nomPrenom');
                        print('Email: $email');
                        print('Password: $password');
                      }else{
                        print('vous devez lire et approuver les Service & Condition');
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
                          color: Colors.white
                      ),

                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Connexion avec',
                    style: TextStyle(fontSize: 16,color: Color(0xff1B3F99), fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.chrome_reader_mode),
                        onPressed: () {
                          print('Connexion avec Google');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        onPressed: () {
                          print('Connexion avec Facebook');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.apple),
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
                      decoration: TextDecoration.underline, // Souligner le texte pour indiquer que c'est un lien
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}