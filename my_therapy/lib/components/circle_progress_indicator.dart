import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'dart:ffi';

class circle_progressindicator extends StatelessWidget {
  final int curStep;
  const circle_progressindicator({super.key, this.curStep = 0});

  @override
  Widget build(BuildContext context) {
    return CircularStepProgressIndicator(
      totalSteps: 100,
      currentStep: curStep,
      stepSize: 10,
      selectedColor: Colors.greenAccent,
      unselectedColor: Colors.grey[200],
      padding: 0,
      width: 150,
      height: 150,
      selectedStepSize: 15,
      roundedCap: (_, __) => true,
    );
  }
}
