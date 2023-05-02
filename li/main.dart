
import 'package:flutter/material.dart';

import 'calendar/calendar_main.dart';
import 'pages/listhome.dart';
import 'ui/page.dart';
import 'welcome.dart';



void main() async {
 

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

