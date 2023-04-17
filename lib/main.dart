import 'package:cateloge_app/Pages/loginpage.dart';
import 'package:cateloge_app/homepage.dart';
import 'package:cateloge_app/utils/routes.dart';
import 'package:cateloge_app/widgets/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      //  home:  const HomePage(),
      // themeMode: ThemeMode.light,
      // theme: ThemeData(primarySwatch: Colors.red),

      // darkTheme: ThemeData(primarySwatch: Colors.amber,

      //   // brightness: Brightness.dark
      // ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const LoginPage(),
        // "/home":(context) => const HomePage()
        //static method doesnt need to be called by its object it can be directly called by class name
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
