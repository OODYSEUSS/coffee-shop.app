import 'package:coffee_shop_app/ui/screens/anboarding/anboarding_screen.dart';
import 'package:coffee_shop_app/ui/screens/auth/login_screen.dart';
import 'package:coffee_shop_app/ui/screens/auth/register_screen.dart';
import 'package:coffee_shop_app/ui/screens/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
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
          '/': (context) => const GetStarted(),
          '/login': (context) => Login(),
          '/register': (context) => Register(),
          '/home': (context) => const HomePage(),
        });
  }
}
