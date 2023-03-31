import 'package:flutter/material.dart';
import 'package:my_therapy/pages/register_page.dart';

import 'login_page.dart';

class LogInOrRegisterPage extends StatefulWidget {
  const LogInOrRegisterPage({Key? key}) : super(key: key);

  @override
  _LogInOrRegisterState createState() => _LogInOrRegisterState();
}

class _LogInOrRegisterState extends State<LogInOrRegisterPage> {
  @override

  // inittially show login page
  bool showLoginPage = true;

  // toggle between login and register page
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}
