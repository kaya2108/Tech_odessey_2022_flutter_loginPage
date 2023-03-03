import 'package:flutter/material.dart';
import 'Loginpage.dart';
import 'signup.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black87,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
void main() {
  runApp(My_App());
}

class My_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
            builder: (context) => Center(
                    child: Scaffold(
                        body: Center(
                            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
                      child: Text(
                        'Say hello to your new app',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()));
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(
                      bottom: 20,
                    )),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(35),
                          border: Border.all(
                            color: Colors.pinkAccent,
                          )),
                      child: TextButton(
                        style: flatButtonStyle,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))))));
  }
}
