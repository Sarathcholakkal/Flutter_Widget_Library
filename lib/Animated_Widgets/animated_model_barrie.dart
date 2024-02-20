import 'package:flutter/material.dart';

class AniamtedModelBarrier extends StatefulWidget {
  const AniamtedModelBarrier({
    super.key,
  });

  @override
  State<AniamtedModelBarrier> createState() => _AniamtedModelBarrierState();
}

class _AniamtedModelBarrierState extends State<AniamtedModelBarrier>
    with TickerProviderStateMixin {
  bool _isplay = false;
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            onTap: () {
              if (_isplay == false) {
                _controller.forward();
                _isplay = true;
              } else {
                _controller.reverse();
              }
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              progress: _controller,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
