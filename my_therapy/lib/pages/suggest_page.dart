import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_therapy/components/image_click.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class SuggestPage extends StatelessWidget {
  SuggestPage({super.key});

  final Uri meditate_link = Uri.parse(
      "https://www.youtube.com/watch?v=O-6f5wQXSu8&list=PLQiGxGHwiuD1kdxsWKFuhE0rITIXe-7yC&ab_channel=Goodful");
  final Uri music_link = Uri.parse(
      "https://www.youtube.com/watch?v=lFcSrYw-ARY&ab_channel=MeditationRelaxMusic");
  final Uri find_link = Uri.parse(
      "https://www.google.com/search?q=mental+health+therapist+near+me");

  Future<void> meditate_clicked() async {
    if (!await launchUrl(meditate_link)) {
      throw Exception('Could not launch $meditate_link');
    }
    ;
  }

  Future<void> find_clicked() async {
    if (!await launchUrl(find_link)) {
      throw Exception('Could not launch $find_link');
    }
    ;
  }

  Future<void> music_clicked() async {
    if (!await launchUrl(music_link)) {
      throw Exception('Could not launch $music_link');
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 90, 104, 255)),
        body: SafeArea(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Relax Text
                      const SizedBox(height: 10),
                      Text(
                        'Relax',
                        style: TextStyle(fontSize: 38),
                      ),

                      // Meditate Image
                      const SizedBox(height: 30),
                      ImageClick(
                        left_SizedBox: 60,
                        onTap: meditate_clicked,
                        pic_file: 'lib/images/meditate_button.jpg',
                        picture_height: 130,
                      ),

                      // Music image
                      const SizedBox(height: 30),
                      ImageClick(
                          left_SizedBox: 20,
                          onTap: music_clicked,
                          pic_file: 'lib/images/music_button.jpg',
                          picture_height: 130),

                      // Find Counselor Image
                      const SizedBox(height: 30),
                      ImageClick(
                          left_SizedBox: 60,
                          onTap: find_clicked,
                          pic_file: 'lib/images/Find_button.jpg',
                          picture_height: 130),
                    ],
                  ),
                ))));
  }
}
