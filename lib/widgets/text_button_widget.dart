import 'package:flutter/material.dart';
import 'package:session_2/second_page.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.controller,
    required this.onPressed,
    required this.buttonLabel,
  }) : super(key: key);

  final TextEditingController controller;
  final Function() onPressed;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 100.0, right: 100.0, bottom: 10),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
            ),
            controller: controller,
          ),
        ),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(buttonLabel),
        ),
      ],
    );
  }
}
