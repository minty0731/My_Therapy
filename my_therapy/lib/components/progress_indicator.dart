import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';

class progress_indicate extends StatelessWidget {
  final int curStep;
  const progress_indicate({super.key, this.curStep = 0});

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: 100,
      currentStep: curStep,
      size: 8,
      padding: 0,
      fallbackLength: 30,
      selectedColor: Colors.yellow,
      unselectedColor: Colors.cyan,
      roundedEdges: Radius.circular(10),
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.yellowAccent, Colors.deepOrange],
      ),
      unselectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.black, Colors.blue],
      ),
    );
  }
}
