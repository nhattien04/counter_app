import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  Stream<int> aStreamFunction() async* {
    // Ham tra ve gia tri nhieu lan thong qua 1 lan goi
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is Counter App!',
      home: AppBar(
        title: Text('Counter App', style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}