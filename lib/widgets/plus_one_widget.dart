import 'package:flutter/material.dart';

class PlusOneWidget extends StatelessWidget {
  const PlusOneWidget({
    Key key,
    @required this.arrowAnimation,
  }) : super(key: key);

  final Animation<double> arrowAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: arrowAnimation,
      builder: (context, child) => Icon(
        Icons.plus_one_outlined,
        size: arrowAnimation.value,
        color: Colors.redAccent,
      ),
    );
  }
}
