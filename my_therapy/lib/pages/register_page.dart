import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_therapy/components/my_button.dart';
import 'package:my_therapy/components/text_field.dart';
import 'package:firebase_database/firebase_database.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

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

  Future addUserDetail(String fullName, String email, String password) async {
    final json = {'fullName': fullName, 'email': email, 'password': password};
    return FirebaseFirestore.instance
        .collection("users")
        .doc('$fullName __ $email')
        .set(json);
  }

  // Registering
  void Register() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
    );

    // try creating user
    try {
      // check if password is correct
      if (passwordController.text == repeatPasswordController.text) {
        // create user
        addUserDetail(fullNameController.text, emailController.text,
            passwordController.text);

        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);

        // add user detail

        // ignore: use_build_context_synchronously
        Navigator.pop(context);
      } else {
        // Show error message (password not alike)
        showErrorMessage("Password doesn't match");
        Navigator.pop(context);
      }

      // pop loading circle
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
                Text("Register",
                    style:
                        TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),

                // Full Name
                const SizedBox(height: 30),
                textfield(
                  controller: fullNameController,
                  hintText: "FullName",
                  obscureText: false,
                ),

                // Email/Phone Number box text
                const SizedBox(height: 10),
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

                //Password box text
                const SizedBox(height: 10),
                textfield(
                  controller: repeatPasswordController,
                  hintText: "Confirm the Password",
                  obscureText: true,
                ),

                // Login button
                const SizedBox(height: 30),
                MyButton(
                    onTap: Register,
                    Text_Write: 'Register',
                    BorderRad: 15,
                    length_button: 0,
                    height_button: 12),

                //Don't have an account? Sign up
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: TextStyle(color: Colors.grey[700])),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign in now!',
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
