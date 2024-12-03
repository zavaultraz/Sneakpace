import 'package:e_shop/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber)
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomePage(),
        '/sign-in' : (context)=>SignInPage(),
        '/sign-up' : (context)=>SignUpPages(),
        '/main' : (context)=>MainPage(),
        '/main-page' : (context) => MainPages(),
        '/detail-chat' : (context) => DetailChatPage(),

      },
    );
  }
}
