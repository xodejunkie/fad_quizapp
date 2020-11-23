import 'package:flutter/material.dart';

class DictationScreen extends StatefulWidget {
  @override
  _DictationScreenState createState() => _DictationScreenState();
}

class _DictationScreenState extends State<DictationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dictation"),
      ),
    );
  }
}
