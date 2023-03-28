import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<String> list=List<String>.generate(1000, (i) => "items $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          appBar: AppBar(
              leading:const Icon(Icons.add),

          ),
        body: ListView.builder(
          itemCount: list.length,

          itemBuilder:(context, index) => ListTile(title: Text(list[index]),),
        ),
        ),
      ),
    );
  }
}
