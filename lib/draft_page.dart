import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Widget body;

  DraftPage({this.body});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BloC"),
        backgroundColor: Colors.black,
      ),
      body: body,
    );
  }
}
