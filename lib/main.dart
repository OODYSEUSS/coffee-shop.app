import 'package:flutter/material.dart';
import 'package:z73_1/ui/pages/anboardings/get_started.dart';
import 'package:z73_1/ui/pages/auth/auth_page.dart';
import 'package:z73_1/ui/pages/auth/login.dart';
import 'package:z73_1/ui/pages/auth/register.dart';
import 'package:z73_1/ui/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthPage(),
          '/start': (context) => const GetStarted(),
          '/login': (context) => Login(),
          '/register': (context) => Register(),
          '/home': (context) => const HomePage(),
        });
  }
}
