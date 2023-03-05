import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Views/Login_View.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              final verifieduser = user?.emailVerified ?? false;
              if (verifieduser) {
                print('Verified User');
              } else {
                print('please verify your email');
              }

              // TODO: Handle this case.
              return const Text('Done');
            default:
              return const Text('loading ... ');
          }
        },
      ),
    );
  }
}