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
      appBar: AppBar(title: const Text ("Animal List - Lab 5")),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index){
          return Card( margin: EdgeInsets.symmetric(vertical: 25), child: ListTile(
            title: SizedBox(width: 10, child: Column(children: [Text('${index + 1}. ${imageNames[index]}'), Image.asset(imageAssets[index]), Text(imageDescriptions[0])])),
          ));
        },
      ),
    );
  }
}

List<String> imageAssets = ['assets/Bear.jpg' , 'assets/Cat.jpg', 
'assets/Cow.jpg', 'assets/Crab.jpg', 'assets/Deer.jpg', 
'assets/Dog.jpg', 'assets/Hawk.jpg', 'assets/Horse.jpg', 
'assets/Lion.jpg', 'assets/Sheep.jpg', 'assets/Snake.jpg', 
'assets/Tiger.jpg', 'assets/Turtle.jpg', 'assets/Whale.jpg', 
'assets/Wolf.jpg'];
List<String> imageNames = ['Bear', 'Cat', 
'Cow', 'Crab', 'Deer',
'Dog', 'Hawk', 'Horse', 
'Lion', 'Sheep', 'Snake', 
'Tiger', 'Turtle', 'Whale', 
'Wolf',];
List<String> imageDescriptions = ['Description area lorem ipsum random latin so the text looks like real english lorem ipsum test hello goodbye text needs to wrap but is not wrapping at the moment'];
