import 'package:ebook/consttants.dart';
import 'package:ebook/screens/login_screen.dart';
import 'package:ebook/screens/signup_screen.dart';
import 'package:flutter/material.dart';




class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To Your Book Library !",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: kBlackColor,
              ),
            ),
            Text(
              "Enjoy With Us",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                color: kBlackColor,
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 200),
              ),
            ),
            Material(
              color: kProgressIndicator,
              borderRadius: BorderRadius.circular(35),
              child: InkWell(
                hoverColor: kLightBlackColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginScreen()),
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 20,
                          color: Color.fromARGB(255, 185, 183, 183).withOpacity(.11),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: const Text("Log In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white))),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.only(top: 15),
              ),
            ),
            Material(
              color: kLightBlackColor,
              borderRadius: BorderRadius.circular(35),
              child: InkWell(
                hoverColor: kLightBlackColor,
                onTap: () {
                  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signupScreen()),
                  );
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 300,
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
                  child: const Text("Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 