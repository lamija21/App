import 'package:flutter/material.dart';


import 'ui/login.dart';
import 'ui/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(gradient:  LinearGradient(colors: [
          Color.fromARGB(255, 124, 55, 170),
                  Color.fromARGB(255, 253, 251, 252),
        ],
        begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
        ),
      ),
       child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 200,
                top: 80,
                left: 10,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/cat.png",
                      width: 250,
                      height: 250,

                    ),
                    const Text(
                      'ToDo',
                      style: TextStyle(
                        fontSize: 29,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) =>  Home()));
                    },
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ]
       )
      )
      )
    );
  }
}