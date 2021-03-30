import 'package:flutter/material.dart';

class MinusOneWidget extends StatelessWidget {
  const MinusOneWidget({
    Key key,
    @required this.arrowAnimation,
  }) : super(key: key);

  final Animation<double> arrowAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: arrowAnimation,
        builder: (context, child) {
          return Icon(
            Icons.exposure_minus_1_outlined,
            color: Colors.deepPurple,
            size: arrowAnimation.value,
          );
        });
  }
}
