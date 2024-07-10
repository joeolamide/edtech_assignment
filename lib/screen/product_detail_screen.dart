import 'package:e_products/styles/text_size.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_products/model/product_model.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isInCart = false;


// A function that handles adding to cart and removing from cart. 
// A pop up message get dispalyed.
  void toggleCart() {
    setState(() {
      isInCart = !isInCart;
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(isInCart ? 'Added to cart' : 'Removed from cart'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.product.title,
          style: EdtechText.edtechTextGreenMedium,
        ),
        //Integration of the adding items to cart feature
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: isInCart ? Colors.green : null,
            ),
            onPressed: toggleCart,
          ),
        ],
      ),
      //The body of the Product detail screen  
      body: SingleChildScrollView(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: CachedNetworkImage(
                    imageUrl: widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  widget.product.title,
                  style: EdtechText.edtechTextBlackBold
                ),
                const SizedBox(height: 10),
                Text(
                  'Price: \$${widget.product.price.toStringAsFixed(2)}',
                  style: EdtechText.edtechTextGreenMedium
                ),
                const SizedBox(height: 20),
                Text(
                  'Description:',
                  style: EdtechText.edtechTextBlackMedium
                ),
                const SizedBox(height: 10),
                Text(widget.product.description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}