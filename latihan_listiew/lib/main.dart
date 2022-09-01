import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   for (int i = 0; i < 20; i++)
  //     widgets.add(Text(
  //       "Data ke-" + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                    child: Text("Tambah Data"),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    }),
                RaisedButton(
                    child: Text("Hapus Data"),
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                      });
                      counter--;
                    })
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
