import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Read1RecordNotFound extends StatelessWidget {
  const Read1RecordNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text("PAGE INFORMATION REPORT")),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("READ DATA NOT FOUND")),
        ],
      ),
    );
  }
}
