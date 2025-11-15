import 'package:flutter/material.dart';
import 'animal_data.dart';

class DetailScreen extends StatelessWidget {
  final Animal animal;

  const DetailScreen({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1D), // dark background
      appBar: AppBar(
        title: Text(safeText(animal.name, "Unknown Animal")), 
        // title with default text just in case
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                animal.imageUrl,
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
                // image fallback if asset missing
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 260,
                    color: Colors.grey.shade800,
                    child: const Center(
                      child: Icon(Icons.broken_image, size: 60, color: Colors.white54),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            Text(
              safeText(animal.name, "Unknown Animal"), 
              // title with default text just in case
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              safeText(animal.description, "No description provided."), 
              // description with default text just in case
              style: const TextStyle(
                fontSize: 18,
                height: 1.5,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// safe text helper
String safeText(String? text, String fallback) {
  if (text == null || text.trim().isEmpty) return fallback;
  return text;
}
