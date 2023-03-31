import 'package:flutter/material.dart';
import 'package:my_therapy/components/my_button.dart';
import 'package:my_therapy/pages/main_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  void goLogIn(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Image.asset('lib/images/logo.jpg', height: 80),

          //text
          const SizedBox(height: 50),
          Text('Mental welness at your fingertips',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 30)),

          // button
          const SizedBox(height: 50),

          MyButton(
            onTap: () {
              goLogIn(context);
            },
            Text_Write: "Get Started",
            BorderRad: 40,
            length_button: 50,
          ),
        ],
      ),
    );
  }
}
