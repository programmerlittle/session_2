import 'package:flutter/material.dart';
import 'package:session_2/second_page.dart';
import 'package:session_2/widgets/text_button_widget.dart';
//เป็นการimport packet หลักของ flutter

void main() {
  runApp(
      MyApp()); //การรัน app ชื่อข้างในคือชื่อ classแรกของ app ส่วนใหญ่จะใช้เป็น MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController tmp =
      TextEditingController(); //ประกาศตัวแปร ประเภท ชื่อตัวแปล = ตัวมันเอง
  // String name = '';
  // int age = 0;
  // class เริ่มต้นที่จะใช้เขียนที่แท้จริง
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButtonWidget(
              controller: tmp,
              buttonLabel: 'Page 2',
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(textFromPage1: tmp.text),
                  ),
                );
                tmp.clear();
              },
            ),
          ],
        ),
      ),
    ); //โครงการappเริ่มต้น
  }
}

//codeตั้งต้นของการเขียนFlutter จะเป็นแบบนี้เสมอ
