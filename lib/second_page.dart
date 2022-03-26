import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({
    Key? key,
    required this.textFromPage1,
  }) : super(key: key);

  String textFromPage1;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page '),
      ),
      body: Center(
        child: Text('My Name\'\s ${widget.textFromPage1}'),
      ),
    );
  }
}
