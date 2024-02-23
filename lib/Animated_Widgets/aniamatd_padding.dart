import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({super.key});

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingState();
}

class _AnimatedPaddingState extends State<AnimatedPaddingWidget> {
  double paddingValue = 00.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  paddingValue = paddingValue == 0.0 ? 100.0 : 00.0;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text("change padding"),
            ),
            Text("$paddingValue"),
            AnimatedPadding(
                padding: EdgeInsets.all(paddingValue),
                duration: Duration(seconds: 3),
                curve: Curves.easeInOut,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  color: Colors.orange,
                ))
          ],
        ),
      ),
    );
  }
}
