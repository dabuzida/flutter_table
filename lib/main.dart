import 'package:flutter/material.dart';
import 'package:flutter_table/go_table.dart';

import 'go_go_table.dart';
import 'go_go_tablee.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Table',
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white30,
        child: Column(
          children: <Widget>[
            // GoTable(),
            SizedBox(height: 30),
            GoGoTable(),
            SizedBox(height: 30),
            GoGoTablee(),
          ],
        ),
      ),
    );
  }
}
