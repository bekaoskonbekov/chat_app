import 'package:flutter/material.dart';
import 'package:group_chat/feature/presentation/pages/forgot_password_page.dart';
import 'package:group_chat/feature/presentation/pages/home_page.dart';
import 'package:group_chat/feature/presentation/pages/login_page.dart';
import 'package:group_chat/on_generate_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Group Chat',
      theme: ThemeData(primaryColor: Colors.green),
      onGenerateRoute: OngenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return LoginPage();
        }
      },
    );
  }
}
