import 'package:ebook/consttants.dart';
import 'package:ebook/account.dart';
import 'package:ebook/screens/home_screen.dart';

import 'package:ebook/screens/signup_screen.dart';
import 'package:ebook/screens/login_screen.dart';
import 'package:ebook/screens/signup_screen.dart';
import 'package:ebook/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'package:ebook/main.dart';

void main() {
  runApp(const ebook());
}

class ebook extends StatelessWidget {
  const ebook({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'eBook',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(
                displayColor: kBlackColor,
              ),
        ),
        home: welcomeScreen());
  }
}
