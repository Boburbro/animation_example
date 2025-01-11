import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _isExpanded ? 100 : 200,
          height: _isExpanded ? 100 : 200,
          decoration: BoxDecoration(
            color: _isExpanded ? Colors.amber : Colors.red,
            borderRadius: BorderRadius.circular(_isExpanded ? 30 : 0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
      ),
    );
  }
}
