import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Welcome_page.dart';
import 'main.dart';

final ButtonStyle flatButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.black87,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Center(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              toolbarHeight: 70,
              leading: IconButton(
                icon: const Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.pinkAccent,
                  size: 50,
                ),
                onPressed: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => My_App())),
              ),
              backgroundColor: Colors.white,
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  const Text(
                    "Sign in",
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  // email or phone number textfield
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 70, right: 20, left: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ), // BoxDecoration
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'E-mail or Phone Number',
                          ), // InputDecoration
                        ), // TextField
                      ), // Padding
                    ), // Container
                  ), // Padding
                  const SizedBox(height: 10),
                  // password textfield
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15, right: 20, left: 20, bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(40),
                      ), // BoxDecoration
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ), // InputDecoration
                        ), // TextField
                      ), // Padding
                    ), // Container
                  ), // Padding
                  const SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: TextButton(
                      style: flatButtonStyle,
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg: 'Logged in Successfully!!',
                            gravity: ToastGravity.BOTTOM,
                            toastLength: Toast.LENGTH_SHORT,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 15);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Welcomepage()));
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
