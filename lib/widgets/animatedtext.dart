import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimateWidget extends StatelessWidget {
  const AnimateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text'),
      ),
      body: Column(
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello World',
                textStyle: TextStyle(fontSize: 30),
                speed: Duration(milliseconds: 100),
              )
            ],
            totalRepeatCount: 4,
            pause: Duration(milliseconds: 200),
            displayFullTextOnTap: true,
          ),
          AnimatedTextKit(
            animatedTexts: [
              RotateAnimatedText(
                'Hello',
                textStyle: TextStyle(fontSize: 30),
                duration: Duration(milliseconds: 1000),
              ),
              RotateAnimatedText(
                'World',
                textStyle: TextStyle(fontSize: 30),
                duration: Duration(milliseconds: 1000),
              )
            ],
          ),
        ],
      ),
    );
  }
}
//to use animated text we need to add the package from pubs.dev to the pubspec.yaml file
