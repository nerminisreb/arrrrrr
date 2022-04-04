import 'package:ebook/consttants.dart';

import 'package:flutter/material.dart';

class detailsScreen extends StatelessWidget {
  const detailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kProgressIndicator,
            title: Text(
              'eBook',
              // You need to add this line
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
          ),
          drawer: Drawer(),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/duvar.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "This is DETAILS SCREEN",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
