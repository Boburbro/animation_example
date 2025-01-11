import 'package:flutter/material.dart';

class AnimatedAlignScreen extends StatefulWidget {
  const AnimatedAlignScreen({super.key});

  @override
  State<AnimatedAlignScreen> createState() => _AnimatedAlignScreenState();
}

class _AnimatedAlignScreenState extends State<AnimatedAlignScreen> {
  bool isAligned = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedAlign(
        alignment: isAligned ? Alignment.bottomCenter : Alignment.topCenter,
        duration: Duration(seconds: 1),
        child: FlutterLogo(size: 50),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAligned = !isAligned;
          });
        },
        child: Text("Animate"),
      ),
    );
  }
}
