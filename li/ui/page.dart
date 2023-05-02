import 'package:flutter/material.dart';

import '../calendar/calendar_main.dart';
import '../pages/listhome.dart';

class TodoMenu extends StatelessWidget {
  const TodoMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 189, 237),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: Column(
              children: [
                Image.asset(
                  'assets/girl.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 20),
                const Text(
                  'An organized life is a',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 234, 154, 248),
                  ),
                ),
                Text(
                  'disciplined life',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, color: Colors.white, size: 30),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => listhome()),);
                },
                icon: Icon(Icons.star, color: Colors.white, size: 30),
              ),
             
              IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Calendar',)),);
                },
                icon: Icon(Icons.calendar_today, color: Colors.white, size: 30),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}





