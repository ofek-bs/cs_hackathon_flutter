import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My sample app"),
      ),
      // TODO: Add a button below the text; Center both of them
      body: Text("Hello Flutter"),
    );
  }
}
