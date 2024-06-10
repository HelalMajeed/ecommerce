import 'package:eapp/model.dart/model.dart';
import 'package:flutter/material.dart';

class OnProduct extends StatelessWidget {
  final Product product;

  const OnProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.image,
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: MediaQuery.sizeOf(context).width * 0.5,
            ),
            SizedBox(height: 16),
            Text(product.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(product.category,
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            SizedBox(height: 16),
            Text(product.description),
          ],
        ),
      ),
    );
  }
}
