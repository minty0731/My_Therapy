import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_therapy/components/my_button.dart';
import 'package:my_therapy/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // error message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }

  // Loggin in Button
  void LogIn() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );

    //sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);

      //pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      // show error message

      showErrorMessage(e.code);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Logo top left
                const SizedBox(height: 20),
                Image.asset('lib/images/logo_MyTherapy.png',
                    height: 80, alignment: Alignment.topLeft),

                // Login Text
                const SizedBox(height: 30),
                Text("Login",
                    style:
                        TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),

                // Email/Phone Number box text
                const SizedBox(height: 30),
                textfield(
                  controller: emailController,
                  hintText: "Email / Phone Number",
                  obscureText: false,
                ),

                //Password box text
                const SizedBox(height: 10),
                textfield(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                // Login button
                const SizedBox(height: 30),
                MyButton(
                    onTap: LogIn,
                    Text_Write: 'Log In',
                    BorderRad: 15,
                    length_button: 0,
                    height_button: 12),

                // Forgot password
                const SizedBox(height: 20),
                Text(
                  "Forgot your password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),

                //Don't have an account? Sign up
                const SizedBox(height: 130),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?',
                        style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign up now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
