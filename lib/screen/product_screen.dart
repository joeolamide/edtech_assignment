import 'dart:convert';
import 'package:e_products/model/product_model.dart';
import 'package:e_products/utils/product_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {

// This line initializes an empty list to store Product objects.
  List<Product> products = [];

 // The initState() method helps to ensure proper initialization, then calls fetchProducts().
  @override
  void initState() {
    super.initState();
    fetchProducts();
  }


//fetchProducts() is an asynchronous method that:
// 1. Makes an HTTP GET request to 'https://fakestoreapi.com/products'.
// 2. Checks if the response is successful (status code 200).
// 3. If successful, it decodes the JSON response body.
// 4. Uses setState() to update the products list by mapping the JSON data to Product objects.

  Future<void> fetchProducts() async {
    final response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        products = jsonData.map((data) => Product.fromJson(data)).toList();
      });
    } else {
      // Handle error if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      // I made use of gridview builder to diplay the products.
      //  The itemCount sets the number of items to the length of the products list.

      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        //This line of code builds the ProductCard
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
      ),
    );
  }
}