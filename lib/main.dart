import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home banner',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0))
      ),
      home: const ItemListPage(title: 'Lab 5'),
    );
  }
}

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text ("LIST VIEW")),

      body: ListView.builder(
        itemCount: 35,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: const Icon(Icons.list),

            trailing: const Text(
              "Animal",
              style: TextStyle(color: Colors.green, fontSize: 15),
            ),
            title: Text("List Item $index"),
          );
        },
      ),
    );
  }
}
