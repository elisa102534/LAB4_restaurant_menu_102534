import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PastaMenu(),
  ));
}

class PastaMenu extends StatelessWidget {
  const PastaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pasta House'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Our Pasta Menu 🍝',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          pastaCard(
            'Creamy Garlic Pasta',
            'RM 12.00',
            'images/creamy_garlic_pasta.jpg',
          ),

          pastaCard(
            'Spaghetti Bolognese',
            'RM 14.00',
            'images/bolognese.jpg',
          ),

          pastaCard(
            'Mac and Cheese',
            'RM 13.00',
            'images/mac_and_cheese.jpg',
          ),
        ],
      ),
    );
  }

  Widget pastaCard(String name, String price, String imagePath) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    price,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
