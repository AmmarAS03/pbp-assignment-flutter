import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/mywatchlist.dart';

class budgetData{
  static List dataBudget = [];
}
class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _fullName = "";
  int _amount = 0;
  bool undergraduateDegree = false;
  bool diplomaDegree = false;
  bool masterDegree = false;
  bool doctorDegree = false;
  double age = 0;
  String pdbClass = 'A';
  List<String> listPBDClass = ['i', 'e', 'C', 'D', 'F', 'KI'];
  bool _switchValue = false;
  String _salutation = "income"; //This is the selection value. It is also present in my array.
  final _salutations = ["income", "expense"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Budget Info'),
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Using padding of 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Title",
                      // Add icons to make it more intuitive
                      // Added a circular border to make it neater
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        _fullName = value!;
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        _fullName = value!;
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Title need to be filled!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  // Using padding of 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Amount",
                      // Add icons to make it more intuitive
                      // Added a circular border to make it neater
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        _amount = int.parse(value!);
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Amount need to be filled!';
                      }
                      return null;
                    },
                  ),
                ),
                DropdownButton(
                  items: _salutations
                      .map((String item) =>
                      DropdownMenuItem<String>(child: Text(item), value: item))
                      .toList(),
                  onChanged: (String?value) {
                    setState(() {
                      print("previous ${this._salutation}");
                      print("selected $value");
                      this._salutation = value ?? "";
                    });
                  },
                  value: _salutation,
                ),


              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(


        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  var store = [];
                  store.add(_fullName);
                  store.add(_amount);
                  store.add(_salutation);
                  budgetData.dataBudget.add(store);
                }
              },
              child: const Text(
                "Save",
                style: TextStyle(color: Colors.white),

              ),
            ),
          ],
        )
      ),
    );
  }
}