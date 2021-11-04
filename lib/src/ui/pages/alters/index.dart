import 'package:flutter/material.dart';

class AlterPage extends StatefulWidget {
  const AlterPage({Key? key}) : super(key: key);

  @override
  _AlterPageState createState() => _AlterPageState();
}

class _AlterPageState extends State<AlterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Alter Screen',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
