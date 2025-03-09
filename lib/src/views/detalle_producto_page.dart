import 'package:flutter/material.dart';
import 'package:redit_clone/src/api/productos.dart';

class DetalleProductoPage extends StatelessWidget {
  const DetalleProductoPage({super.key, required this.id, required this.extras});

  final String id;
  final Map? extras;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(extras?['title'] ?? 'sin titulo', 
        style: TextStyle(fontWeight: FontWeight.bold)
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                extras?['image'],
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              extras?['title'],
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber, size: 28),
                SizedBox(width: 8),
                Text(
                  '${extras?['rating'] ?? '0.0'} / 5.0',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Precio USD: ${extras?['price']?.toString()}',
                style: const TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16),
                ),
              child: Text(
                extras?['description'],
                style: const TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height:20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: EdgeInsets.all(16),
                ),
                onPressed: () {},
                child: Text(
                  'Añadir al carrito',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
            ),
          ],
        )
      )
    );
  }
}
