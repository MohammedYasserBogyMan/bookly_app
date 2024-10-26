import 'package:flutter/material.dart';

class SlideingText extends StatelessWidget {
  const SlideingText({
    super.key,
    required this.slideingAnimation,
  });

  final Animation<Offset> slideingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideingAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slideingAnimation,
          child: const Text(
            'Read, Learn, Grow',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
