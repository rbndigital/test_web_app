import 'package:flutter/material.dart';

class CustomFlatButtom extends StatelessWidget {
  final String text;
  final Color? color;
  final Function onPressed;

  const CustomFlatButtom({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.pink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(primary: color),
        onPressed: () => onPressed(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text),
        ));
  }
}
