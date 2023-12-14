import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'create_success.dart';

class CreateData extends StatelessWidget {
  const CreateData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('CRUD OPERATION\n   (CREATE DATA)')),
        ),
        body: SearchMyResult(),
      ),
    );
  }
}

class SearchMyResult extends StatefulWidget {
  const SearchMyResult({
    super.key,
  });

  @override
  State<SearchMyResult> createState() => _SearchMyResultState();
}

class _SearchMyResultState extends State<SearchMyResult> {
  TextEditingController ctrStudentId = TextEditingController();
  TextEditingController ctrStudentName = TextEditingController();
  TextEditingController ctrGender = TextEditingController();
  TextEditingController ctrAddress = TextEditingController();
  TextEditingController ctrMajor = TextEditingController();
  TextEditingController ctrPhone = TextEditingController();

//zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz

  Future<void> _create() async {
    final url = Uri.parse(
      //'https://mediumsitompul.com/crud_restapi/create.php',
      'http://192.168.100.240:8087/crud_restapi/create.php',
    );
    var response123 = await http.post(url, body: {
      "studentId": ctrStudentId.text,
      "studentName": ctrStudentName.text,
      "gender": ctrGender.text,
      "address": ctrAddress.text,
      "major": ctrMajor.text,
      "phone": ctrPhone.text,
    });

    final result1 = jsonDecode(response123.body);

    print("result1+++++++++++++++++++++++");
    print(result1);

    if (result1.toString() == 'success') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateDataSuccess()),
      );
    }

    // if (result1.isNotEmpty) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => CreateDataSuccess()),
    //   );
    // }

    // //******************************************************************** */
    // if (result1.isNotEmpty) {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const CreateDataSuccess()),
    //   );
    // }

    // if (result1.toString() == 'username exist') //link to file php
    // {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const CreateDataSuccess()),
    //   );
    // }

    // if (result1.toString() == 'success') {
    //   //link to file php
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const CreateDataSuccess()),
    //   );
    // }

    // if (result1.toString() == 'error') {
    //   //link to file php
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const CreateDataSuccess()),
    //   );
    // }
    // //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),

          //.....................................................................

          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 16,
              controller: ctrStudentId,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '1. Student_id'),
            ),
          ),

          //.....................................................................

          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              maxLength: 100,
              controller: ctrStudentName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '2. Student_name'),
            ),
          ),

          //.....................................................................

          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              maxLength: 1,
              controller: ctrGender,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '3. Gender'),
            ),
          ),

          //.....................................................................

          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              maxLength: 150,
              controller: ctrAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '4. Address'),
            ),
          ),
          //.....................................................................
          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              maxLength: 50,
              controller: ctrMajor,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '5. Major'),
            ),
          ),

          //.....................................................................

          SizedBox(
            height: 56,
            width: 185,
            child: TextField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 16,
              controller: ctrPhone,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: '6. Phone'),
            ),
          ),
          //.....................................................................

          //.....................................................................
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(2.0),
          //       child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: ElevatedButton(
          //               onPressed: () {},
          //               style: ElevatedButton.styleFrom(
          //                   primary: Colors.deepOrange),
          //               child: Text("7. Tuition_fee:"))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(2.0),
          //       child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: ElevatedButton(
          //               onPressed: () {},
          //               child: Text(widget.tuition_fee2a_.toString()))),
          //     ),
          //   ],
          // ),
          //.....................................................................
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(2.0),
          //       child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: ElevatedButton(
          //               onPressed: () {},
          //               style: ElevatedButton.styleFrom(
          //                   primary: Colors.deepOrange),
          //               //child: Text("8. Datetime_entry:"))),
          //               child: Text("8. Datetime_paid:"))),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.all(2.0),
          //       child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: ElevatedButton(
          //               onPressed: () {},
          //               child: Text(widget.datetime_entry2a_.toString()))),
          //     ),
          //   ],
          // ),
          //.....................................................................
          const SizedBox(
            height: 30,
          ),

          ElevatedButton(
              onPressed: () {
                _create();
              },
              child: Text("CREATE DATA"))
        ],
      ),

      //................... floatingActionButton >>> IN SCAFFOLD() ................
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          print('Tombol Reffresh di pencettt');

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ));
        }),
        tooltip: 'Reload data',
        child: Icon(Icons.ac_unit),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      //...........................................................................
    );
  }
}
