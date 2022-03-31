import 'package:flutter/material.dart';
import 'package:login_form/screens/Widgets/home_page.dart';
import 'package:login_form/screens/login_page.dart';
import 'package:login_form/screens/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : SignUpPage() ,
      // routes: {
      //   "/login" : (context) => LoginPAge(),
      //   "/homepage" : (context) => HomePage(),
      //
      // },
    );
  }
}
