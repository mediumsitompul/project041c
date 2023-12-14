import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'data_model_pareto1.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'main.dart';

class Major extends StatelessWidget {
  const Major({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text('CRUD OPERATION\n (READ ALL DATA)')),
        ),
        body: MyProject(),
      ),
    );
  }
}

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  //Timer? _timer;
  var sum1;

  List<DataModel> dataList = [];
  bool loading = true;

  @override
  void initState() {
    getData();
    _queryCount();
    //_timer = Timer.periodic(const Duration(seconds: 5), (timer) => getData());
    super.initState();
  }

  //============================================== OKE =========================================
  // FUNCTION
  void getData() async {
    var response = await http.get(Uri.parse(
        "https://mediumsitompul.com/crud_restapi/pareto_major.php?auth=kjgdkhdfldfguttedfgr"));
    List data = json.decode(response.body);
    print("data++++++++++++++++++++++++++++++++++++++++++++++++");
    print(data);

    setState(() {
      dataList = data1ModelFromJson(data);
      loading = false;
    });
  }

  //===========================================================================================
  Future<void> _queryCount() async {
    final url1 = Uri.parse(
        "https://mediumsitompul.com/crud_restapi/query_totalrecord.php?auth=kjgdkhdfldfguttedfgr");
    var response = await http.post(url1, body: {});
    var datauser = jsonDecode(response.body);

    if (datauser.isEmpty) {
      setState(() {
        sum1 = "0";
      });
    } else {
      setState(() {
        sum1 = datauser[0]['jumlah'];
      });
    }
  }

  //===========================================================================================
  //setting diagram/chart
  List<charts.Series<DataModel, String>> _createSampleData() {
    return [
      charts.Series<DataModel, String>(
          domainFn: (DataModel _DataModel, _) => _DataModel.major1,
          measureFn: (DataModel _DataModel, _) => _DataModel.count1,
          id: 'name',
          data: dataList,
          labelAccessorFn: (DataModel _DataModel, _) =>
              '\#  ${_DataModel.count1.toString()}')
    ];
  }

  //===========================================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 600,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                
                const Text(
                  "NUMBER OF STUDENTS PER MAJOR",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blueGrey),
                ),

                const SizedBox(
                  height: 20,
                ),

                Center(
                  child: Text(
                    "Grand Total = " + sum1.toString(),
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                //Center(),

                Expanded(
                  child: charts.BarChart(
                    barRendererDecorator: charts.BarLabelDecorator<String>(),
                    domainAxis: const charts.OrdinalAxisSpec(),
                    vertical: false, //For Chart Horizontal
                    _createSampleData(),
                    animate: false,
                  ),
                ),
              ],
            ),
          )
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
