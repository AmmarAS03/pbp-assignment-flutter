import 'package:flutter/material.dart';
import 'package:counter_7/page/add.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/mywatchlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _evenOdd = "EVEN";
  Color _textColor = Colors.red;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    _numDecider();
  }

  void _decrementCounter(){
    setState((){
      if (_counter==0){
        _counter = 0;
      } else{
        _counter--;
      }
    });
    _numDecider();
  }
  void _numDecider(){
    setState((){
      if (_counter%2 == 0){
        _evenOdd = "EVEN";
        _textColor = Colors.red;
      }
      else if (_counter%2 != 0){
        _evenOdd = "ODD";
        _textColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
            ListTile(
              title: const Text('My Watchlist'),
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _evenOdd,
              style: TextStyle(color: _textColor),
            ),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Visibility(
              child: FloatingActionButton(
                heroTag: null,
                onPressed: _decrementCounter,
                child: Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              heroTag: null,
              onPressed: _incrementCounter,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),

    );
  }
}
