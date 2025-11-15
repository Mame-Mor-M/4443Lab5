import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'animal_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal List App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
        scaffoldBackgroundColor: const Color(0xFF1A1A1D), 
        useMaterial3: true,
      ),
      home: const ItemListPage(),
    );
  }
}

class ItemListPage extends StatelessWidget {
  const ItemListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animal List"),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          final animal = animals[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),

            //use cards for cleaner look
            child: Card(
              color: const Color(0xFFFFF8F2), // light card
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

              child: ListTile(
                contentPadding: const EdgeInsets.all(12),



                //ERROR HANDLING FOR MISSING DATA just in case
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    animal.imageUrl,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    // image if asset missing
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 70,
                        height: 70,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.broken_image, color: Colors.black54),
                      );
                    },
                  ),
                ),

                title: Text(
                  safeText(animal.name, "Unknown Animal"), 
                  // title with default text
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A1D),
                  ),
                ),

                subtitle: Text(
                  safeText(animal.description, "No description available."),
                  // description with default text
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen(animal: animal)),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

// safe text helper
String safeText(String? text, String fallback) {
  if (text == null || text.trim().isEmpty) return fallback;
  return text;
}
