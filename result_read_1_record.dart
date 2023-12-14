import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'read_1_record.dart';
import 'main.dart';

class ResultRead1Record extends StatelessWidget {
  //DECLARATION THE PARAMETER
  final String id1_,
      student_id1_,
      student_name1_,
      gender1_,
      address1_,
      major1_,
      phone1_,
      datetime_entry2_;

  const ResultRead1Record({
    super.key,
    required this.id1_,
    required this.student_id1_,
    required this.student_name1_,
    required this.gender1_,
    required this.address1_,
    required this.major1_,
    required this.phone1_,
    required this.datetime_entry2_,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text("OPERATION CRUD\n (READ 1 RECORD)")),
        ),
        body: MyWidget(
          //SEND PARAMETER FROM STATELESSWIDGET TO STATEFULWIDGET
          id1a_: id1_,
          student_id1a_: student_id1_,
          student_name1a_: student_name1_,
          gender1a_: gender1_,
          address1a_: address1_,
          major1a_: major1_,
          phone1a_: phone1_,
          datetime_entry2a_: datetime_entry2_,
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  //DECLRATION THE PARAMETER
  final String id1a_,
      student_id1a_,
      student_name1a_,
      gender1a_,
      address1a_,
      major1a_,
      phone1a_,
      datetime_entry2a_;

  const MyWidget({
    super.key,
    //REQUIRED THE PARAMETER
    required this.id1a_,
    required this.student_id1a_,
    required this.student_name1a_,
    required this.gender1a_,
    required this.address1a_,
    required this.major1a_,
    required this.phone1a_,
    required this.datetime_entry2a_,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //.....................................................................
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("1. Student_Id:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.student_id1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("2. Student_name:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.student_name1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("3. Gender:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.gender1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("4. Address:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.address1a_))),
              ),
            ],
          ),
          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("5. Major:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.major1a_))),
              ),
            ],
          ),
          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.teal),
                      child: Text("6. Phone:")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.phone1a_))),
              ),
            ],
          ),

          // //...................................................................
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(2.0),
          //       child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: ElevatedButton(
          //               onPressed: () {
          //                 //_update1();
          //               },
          //               style: ElevatedButton.styleFrom(primary: Colors.teal),
          //               child: Text("6. Phone:"))),
          //     ),
          //     const SizedBox(
          //       height: 36,
          //       width: 185,
          //       child: TextField(
          //         //controller: hpController,
          //         decoration: InputDecoration(
          //             border: OutlineInputBorder(), labelText: ''),
          //       ),
          //     )
          //   ],
          // ),

          // //.....................................................................

          SizedBox(
            height: 60,
          ),

          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Read1Record(),
                ));
              },
              child: Text("READ AGAIN"))
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
