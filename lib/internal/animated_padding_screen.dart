import 'package:flutter/material.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  const AnimatedPaddingScreen({super.key});

  @override
  State<AnimatedPaddingScreen> createState() => _AnimatedPaddingScreenState();
}

class _AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  bool isPadded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ColoredBox(
          color: Colors.black87,
          child: AnimatedPadding(
            padding: isPadded ? EdgeInsets.all(8) : EdgeInsets.all(50),
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          isPadded = !isPadded;
        });
      }),
    );
  }
}
