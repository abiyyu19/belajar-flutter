import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF8C062F),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xFFFE57888), Color(0xFFF56D5D)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(),
            ),
          ),
        ],
      ),
    );
  }
}
