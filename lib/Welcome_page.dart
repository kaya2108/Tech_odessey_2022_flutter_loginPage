import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Center(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              centerTitle: true,
              toolbarHeight: 70,
              leading: IconButton(
                  icon: const Icon(
                    Icons.account_circle,
                    color: Colors.black,
                    size: 50,
                  ),
                  onPressed: () {}),
              backgroundColor: Colors.white,
              title: const Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            bottomNavigationBar: Container(
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.house_outlined,
                          color: Colors.pinkAccent,
                          size: 40,
                        ),
                      ),
                      const Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            body: Container(
              child: Column(
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(color: Colors.black, fontSize: 35),
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
