import 'package:ebook/account.dart';

import 'package:ebook/screens/signup_screen.dart';
import 'package:ebook/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:ebook/consttants.dart';

class signupScreen extends StatelessWidget {
  const signupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/wall.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[




            
            Text(
              "Create account now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kBlackColor,
                fontSize: 30,
              ),
            ),
            Image.asset(
              "assets/images/signup.png",
              width: 250,
              height: 250,
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 50),
              ),
            ),







            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: kProgressIndicator,
                    ),
                    hintText: "User Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 15),
              ),
            ),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: kProgressIndicator,
                    ),
                    hintText: "Your Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 15),
              ),
            ),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                width: 350,
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: kProgressIndicator,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: kProgressIndicator,
                    ),
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 25),
              ),
            ),







            
            Material(
              color: kProgressIndicator,
              borderRadius: BorderRadius.circular(35),
              child: InkWell(
                hoverColor: kBlackColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const account(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 20,
                        color: Color(0xFF666666).withOpacity(.11),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TextButton 