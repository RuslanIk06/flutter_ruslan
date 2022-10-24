import 'package:flutter/material.dart';
import 'package:latihan_bloc/models/product.dart';
import 'package:latihan_bloc/pages/cart_page.dart';
import 'package:latihan_bloc/widgets/product_list.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Product> cartList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alta Shop'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartPage(
                    cartList: cartList,
                  ),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart_rounded,
            ),
          ),
        ],
      ),
      body: ProductList(
        cartList: cartList,
      ),
    );
  }
}
