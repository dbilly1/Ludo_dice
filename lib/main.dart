import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blue[200],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice1.png'),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice1.png'),
          )),
        ],
      ),
    );
  }
}
