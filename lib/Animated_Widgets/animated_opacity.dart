import 'package:flutter/material.dart';

class AnimatedOpacityWidgets extends StatefulWidget {
  const AnimatedOpacityWidgets({super.key});

  @override
  State<AnimatedOpacityWidgets> createState() => _AnimatedOpacityWidgetsState();
}

class _AnimatedOpacityWidgetsState extends State<AnimatedOpacityWidgets> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _opacity == 0.0 ? _opacity = 1.0 : _opacity = 0.0;
                  });
                },
                child: Text("opacity"))
          ],
        ),
      ),
    );
  }
}
