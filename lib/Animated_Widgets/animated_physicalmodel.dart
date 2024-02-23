import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({super.key});

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            child: SizedBox(
              height: 100,
              width: 120,
              child: const Icon(Icons.android_outlined),
            ),
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0.0 : 6.0,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(microseconds: 500),
            curve: Curves.fastOutSlowIn,
          ),
          SizedBox(
            height: 20,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isFlat = !_isFlat;
                  });
                },
                child: Text("clik")),
          )
        ],
      )),
    );
  }
}
