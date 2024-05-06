import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:signup_page/main.dart';
import 'package:signup_page/signup.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Make scaffold background transparent
      body: Container(
        // Container to hold background image and other content
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://wallpapercave.com/wp/wp4805738.png'),
            fit: BoxFit.cover, // Cover the entire screen
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              SizedBox(height: 140), // Adjust top padding if necessary
              FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text(
                      "Please login or signup to continue using our app",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      "Login via socials",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20,),
              FadeInUp(
                duration: Duration(milliseconds: 2000),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Adjust the color as needed
                      ),
                      child: IconButton(
                        icon: Brand(
                          Brands.google,
                        ),
                        onPressed: () {
                        },
                        iconSize: 28,
                      ),
                    ),
                    SizedBox(width: 20), // Add some space
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Adjust the color as needed
                      ),
                      child: IconButton(
                        icon: Icon(
                          Bootstrap.twitter_x,
                          color: Colors.black,
                        ),
                        onPressed: () {
                        },
                        iconSize: 28,
                      ),

                    ),
                  ],
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1600),
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Center(
                    child: Text(
                      "Or continue with email",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(height: 1),
                    FadeInUp(
                      duration: Duration(milliseconds: 1900),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the forgot password page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20), // Add some space
                    SizedBox(height: 30),
                    FadeInUp(
                      duration: Duration(milliseconds: 2000),
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the forgot password page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          "Already have an account? Login",
                          style: TextStyle(color: Colors.red,fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40)
            ],
          ),
        ),
      ),
    );
  }
}


