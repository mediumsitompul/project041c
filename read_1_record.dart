import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'read_1_record_notfound.dart';
import 'result_read_1_record.dart';

class Read1Record extends StatelessWidget {
  const Read1Record({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text("CRUD OPERATION\n (READ 1 RECORD)")),
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
  TextEditingController ctr_search = TextEditingController();
  //DECLARATION PARAMETER (Fields Record)
  var id1;
  var student_id1;
  var student_name1;
  var gender1;
  var address1;
  var major1;
  var phone1;
  var tuition_fee2;
  var datetime_entry2;

  //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

  Future<void> _querySearch1() async {
    final url1 =
        Uri.parse('https://mediumsitompul.com/crud_restapi/search1.php');
        //Uri.parse('http://192.168.100.240:8087/crud_restapi/search1.php');
    var responseUniv = await http.post(url1, body: {
      "search1": ctr_search.text,
    });
    final datastudent = jsonDecode(responseUniv.body);
    print(datastudent);
    if (datastudent.toString().isEmpty) {
      setState(() {
        print("Data Not Found+++++++++++");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Read1RecordNotFound(),
            ));
      });
    } else {
      if (datastudent[0]['id'] != null) {
        id1 = datastudent[0]['id'];
        student_id1 = datastudent[0]['student_id'];
        student_name1 = datastudent[0]['student_name'];
        gender1 = datastudent[0]['gender'];
        address1 = datastudent[0]['address'];
        major1 = datastudent[0]['major'];
        phone1 = datastudent[0]['phone'];

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultRead1Record(
                id1_: id1,
                student_id1_: student_id1,
                student_name1_: student_name1,
                gender1_: gender1,
                address1_: address1,
                major1_: major1,
                phone1_: phone1,
                datetime_entry2_: datetime_entry2.toString(),
              ),
            ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              controller: ctr_search,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 16,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Please enter your Student_id',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                _querySearch1();
                print("tombol dipencet++++");
              },
              child: Text("READ / SEARCH 1 RECORD"))
        ],
      ),
    );
  }
}
