import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_studentsid_search/create.dart';
import 'package:flutter_studentsid_search/pareto_major.dart';
import 'read_1_record.dart';
import 'result_read_all_record_table.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('CRUD OPERATION')),
        ),
        body: NextPage_02_Pref(),
      ),
    );
  }
}

class NextPage_02_Pref extends StatefulWidget {
  const NextPage_02_Pref({Key? key}) : super(key: key);

  @override
  State<NextPage_02_Pref> createState() => _NextPagePrefState();
}

class _NextPagePrefState extends State<NextPage_02_Pref> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //initial();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),

            const Text(
              " Main Menu CRUD",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 40,
            ),

            //.....................................................................

            Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 200, 2),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateData()));
                  },
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("01. CREATE"))),
            ),
            //.................................................................
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 80, 2),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Read1Record()));
                      },
                      child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("02. READ"))),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResultReadAllRecord()));
                      },
                      child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text("READ ALL"))),
                ],
              ),
            ),
            //........................................................................

            Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 100, 2),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Major()));
                  },
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("03. MAJOR SUMMARY PARETO"))),
            ),
            //.....................................................................

            //........................................................................

            Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 200, 2),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Read1Record()));
                  },
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("04. UPDATE"))),
            ),
            //.....................................................................

            Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 200, 2),
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => TableTs()));
                  },
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("05. DELETE"))),
            ),
          ],
        ),
      ),
    );
  }
}
