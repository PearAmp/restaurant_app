import 'package:flutter/material.dart';

class SeconPage extends StatefulWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('oooo'),
      ),
    );
  }
}
