import 'dart:ffi';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final String Text_Write;
  final double BorderRad;
  final double length_button;
  final double Text_size;
  final double height_button;


  const MyButton({super.key, 
  @required this.onTap,
  this.Text_Write = '',
  this.BorderRad = 40,
  this.length_button = 40,
  this.Text_size = 18,
  this.height_button = 20});


  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(height_button),
        margin: EdgeInsets.symmetric(horizontal: length_button),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 90, 104, 255),
          borderRadius: BorderRadius.circular(BorderRad)
          ),
        child: Center(
          child: 
            Text(
              Text_Write,
              style: TextStyle( 
                color: Colors.white, 
                fontSize: Text_size, 
                fontWeight: FontWeight.bold),
            ),
        ),
      ),
    );

  }
}