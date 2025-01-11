import 'package:animation_example/internal/animated_align_screen.dart';
import 'package:animation_example/internal/animated_container_screen.dart';
import 'package:animation_example/internal/animated_default_text_style_screen.dart';
import 'package:animation_example/internal/animated_opacity_screen.dart';
import 'package:animation_example/internal/animated_padding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.light(),
      themeAnimationDuration: Duration(seconds: 1),
      themeAnimationCurve: Curves.easeInExpo,
      theme: ThemeData(
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

List<List<dynamic>> _screens = [
  ["AnimatedAlignScreen", AnimatedAlignScreen()],
  ["AnimatedContainerScreen", AnimatedContainerScreen()],
  ["AnimatedDefaultTextStyleScreen", AnimatedDefaultTextStyleScreen()],
  ["AnimatedOpacityScreen", AnimatedOpacityScreen()],
  ["AnimatedPaddingScreen", AnimatedPaddingScreen()]
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            _screens.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _screens[index][1],
                    ),
                  );
                },
                child: Text(
                  _screens[index][0],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
