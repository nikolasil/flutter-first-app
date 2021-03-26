import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  TextControl({
    Key key,
    @required this.change,
  }) : super(key: key);

  Function change;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: true,
      onPressed: change,
      child: Text("changeText"),
    );
  }
}
