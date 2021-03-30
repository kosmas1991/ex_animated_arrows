import 'package:flutter/material.dart';

class DaTextWidget extends StatelessWidget {
  const DaTextWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'bl@ bl@',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }
}
