import 'package:flutter/material.dart';
import 'package:my_therapy/screens/date2.dart';
import 'package:my_therapy/screens/date3.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 90, 104, 255)),
      body: PageView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          Date3(),
          Date2(),
        ],
      ),
    );
  }
}
