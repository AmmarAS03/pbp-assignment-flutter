import 'package:http/http.dart' as http;
import 'package:counter_7/main.dart';
import 'package:counter_7/model/watch_list.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/add.dart';
import 'package:counter_7/page/detail.dart';
import 'dart:convert';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  _MyWatchListPageState createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {


  Future<List<WatchList>> fetchToDo() async {
    var url = Uri.parse(
        'https://assg2pbp.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );
    // decode the response into the json form
    var jsonData = jsonDecode(utf8.decode(response.bodyBytes));;

    // convert the json data into ToDo object

    List<WatchList> listWatchList = [];
    for (var d in jsonData) {
      if (d != null) {
        print(d["fields"]);
        listWatchList.add(WatchList.fromJson(d["fields"]));
      }
    }
    return listWatchList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watchlist'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Adding clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(title: 'Flutter Demo Home Page')),
                  );
                },
              ),
              ListTile(
                title: const Text('Add Budget Info'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Budget Data'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDataPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watchlist'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyWatchListPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Your Watch list is empty :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black, blurRadius: 2.0)
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                TextButton(
                                  child: Text("${snapshot.data![index].title}", style: TextStyle(color: Colors.black),
                                   ),

                                    onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DetailPage(title: snapshot.data![index].title, have_watched: snapshot.data![index].have_watched, rating: snapshot.data![index].rating, release: snapshot.data![index].release, review: snapshot.data![index].review)),
                                  );
                                }),
                              ],
                            ),
                          ));
                }
              }
            }));
  }
}
