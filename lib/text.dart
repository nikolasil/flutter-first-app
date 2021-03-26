import 'package:flutter/material.dart';

class PrettyText extends StatelessWidget {
  const PrettyText({
    Key key,
    @required this.arrayText,
    @required this.index,
  }) : super(key: key);

  final List<String> arrayText;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(color: Colors.green, width: 5),
          borderRadius: BorderRadius.all(Radius.circular(100))),
      child: Center(
        child: arrayText[index] == '!'
            ? Text(
                arrayText[index],
                style: TextStyle(fontSize: 20, color: Colors.red),
              )
            : Text(
                arrayText[index],
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
      ),
    );
  }
}
