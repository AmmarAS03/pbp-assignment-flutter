import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/add.dart';
import 'package:counter_7/page/mywatchlist.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  final _formKey = GlobalKey<FormState>();
  String _fullName = "";
  bool undergraduateDegree = false;
  bool diplomaDegree = false;
  bool masterDegree = false;
  bool doctorDegree = false;
  double age = 0;
  String pdbClass = 'A';
  List<String> listPBDClass = ['A', 'B', 'C', 'D', 'E', 'F', 'KI'];
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Budget Data'),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter_7'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Flutter Demo Home Page')),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Info'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Budget Data'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          for (var i in budgetData.dataBudget)
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child:Column(
                  children: [
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text(i[0])

                        ],
                      )
                    ),
                    ListTile(
                      title: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ Text('${i[1].toString()}\$'), Text('${i[2]}')],
                      )
                    ),
                  ]
                ),
              ),
            ),
        ],
      ),
    );
  }
}