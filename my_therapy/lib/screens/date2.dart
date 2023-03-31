import 'package:flutter/material.dart';
import 'package:my_therapy/components/my_button.dart';
import 'package:my_therapy/components/progress_indicator.dart';
import 'package:my_therapy/components/circle_progress_indicator.dart';
import 'package:my_therapy/pages/suggest_page.dart';

class Date2 extends StatelessWidget {
  const Date2({super.key});
  void goSuggest(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => SuggestPage()));
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
                      //This Week Text
                      const SizedBox(height: 30),
                      const Text(
                        'Last Week',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            color: Color.fromARGB(255, 105, 105, 105)),
                      ),

                      //logo
                      const SizedBox(height: 30),
                      Image.asset('lib/images/happy.jpg', height: 100),

                      //progress bar
                      //sleep
                      const SizedBox(height: 25),

                      progress_indicate(
                        curStep: 90,
                      ),

                      const SizedBox(height: 10),
                      const Text('7.5 Hr',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 43, 43, 43))),
                      const SizedBox(height: 5),
                      const Text(
                        'Avg sleep hour/day',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 92, 92, 92)),
                      ),

                      // Step Count + Calories
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          circle_progressindicator(curStep: 100),
                          const SizedBox(width: 50),
                          circle_progressindicator(curStep: 94)
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 30),
                          const Text('3496 steps',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 43, 43, 43))),
                          const SizedBox(width: 110),
                          const Text('2130 calories',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 43, 43, 43))),
                        ],
                      ),

                      Row(
                        children: [
                          const SizedBox(width: 10),
                          const Text(
                            'Avg step counts/day',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 92, 92, 92)),
                          ),
                          const SizedBox(width: 80),
                          const Text(
                            'Avg calories burned/day',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromARGB(255, 92, 92, 92)),
                          ),
                        ],
                      ),

                      // button
                      const SizedBox(height: 30),
                      MyButton(
                          onTap: () {
                            goSuggest(context);
                          },
                          Text_Write: "Get Suggestion",
                          BorderRad: 40,
                          length_button: 30,
                          height_button: 15),
                    ],
                  ),
                ))));
  }
}
