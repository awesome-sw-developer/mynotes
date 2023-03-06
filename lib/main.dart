import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/Views/Login_View.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mynotes/Views/Register_view.dart';
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
    routes: {
      '/login/': (context) => const LoginView(),
      '/register/': (context) => const Register(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            final verifieduser = user?.emailVerified ?? false;
            // if (verifieduser) {
            //   return const Text('Done');
            // } else {
            //   return const VerifyEmailView();
            // }
            return const LoginView();

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
