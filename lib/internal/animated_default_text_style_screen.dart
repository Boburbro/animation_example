import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleScreen extends StatefulWidget {
  const AnimatedDefaultTextStyleScreen({super.key});

  @override
  State<AnimatedDefaultTextStyleScreen> createState() =>
      _AnimatedDefaultTextStyleScreenState();
}

class _AnimatedDefaultTextStyleScreenState
    extends State<AnimatedDefaultTextStyleScreen> {
  bool _isHighlighted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedDefaultTextStyle(
          style: TextStyle(
            fontSize: _isHighlighted ? 20 : 40,
            color: _isHighlighted ? Colors.black : Colors.blue,
          ),
          duration: Duration(seconds: 1),
          child: Text("Hello Flutter animations!"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isHighlighted = !_isHighlighted;
          });
        },
      ),
    );
  }
}
