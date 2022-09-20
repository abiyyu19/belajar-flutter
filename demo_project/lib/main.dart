import 'package:flutter/material.dart';
import 'package:demo_project/main_page.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            padding: EdgeInsets.all(30),
            version: 6,
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            size: 300,
            data: "https://www.youtube.com/c/EricoDarmawanHandoyo",
          ),
        ),
      ),
    );
  }
}
