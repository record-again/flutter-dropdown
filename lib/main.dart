import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List products = [
    {"label": "Product One", "value": 1},
    {"label": "Product Two", "value": 2},
    {"label": "Product Three", "value": 3},
  ];

  late int selected = products[0]['value'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Drop Down"),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(30),
        child: DropdownButton(
          value: selected,
          items: products
              .map((e) => DropdownMenuItem(
                  child: Text("${e['label']}"), value: e['value'] as int))
              .toList(),
          onChanged: (value) {
            setState(() {
              selected = value!;
            });
          },
        ),
      )),
    );
  }
}
