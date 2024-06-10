import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String title;
  final String category;
  final String description;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        category: json['category'],
        description: json['description'],
        image: json['image']);
  }
}

Future<List<Product>> fetchProducts() async {
  final response =
      await http.get(Uri.parse('https://fakestoreapi.com/products/'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((product) => Product.fromJson(product)).toList();
  } else {
    throw Exception('Failed to load products');
  }
}
