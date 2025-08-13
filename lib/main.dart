import 'package:chatview/chatview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dating_app/chat_list_screen.dart';
import 'package:flutter_dating_app/data.dart';
import 'package:flutter_dating_app/home_screen.dart';
import 'package:flutter_dating_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffEE5366),
        colorScheme:
            ColorScheme.fromSwatch(accentColor: const Color(0xffEE5366)),
      ),
      home: const HomeScreen(),
    );
  }
}