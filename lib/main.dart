import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_img.jpeg'),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),

                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    padding: EdgeInsets.symmetric(vertical: 35, horizontal: 30),

                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 1.5,
                      ),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logo.png', width: 80, height: 80),

                        const SizedBox(height: 20),

                        Text(
                          'Bienvenue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),
                        Text(
                          'Connectez-vous à votre compte',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 40),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Votre Email',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 8),

                            TextField(
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                decoration: TextDecoration.none,
                              ),

                              decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                filled: true,
                                fillColor: Colors.deepPurpleAccent.withOpacity(
                                  0.3,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Votre mot de passe',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(height: 8),

                            TextField(
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                decoration: TextDecoration.none,
                              ),

                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Mot de passe',
                                hintStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                filled: true,
                                fillColor: Colors.deepPurpleAccent.withOpacity(
                                  0.3,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),
                            Text(
                              'Mot de passe oublié ?',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          width: double.infinity,

                          child: ElevatedButton(
                            onPressed: () {
                              debugPrint('Connexion en cours...');
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurpleAccent,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),

                            child: const Text(
                              'Se connecter',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
