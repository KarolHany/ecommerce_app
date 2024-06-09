import 'package:ecommerce_app/components/my_drawer.dart';
import 'package:ecommerce_app/components/my_product_item.dart';
import 'package:ecommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().ShopProducts;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Center(child: Text("Shop Page")),
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, "/cart_page"),
                icon: Icon(Icons.shopping_cart_outlined))
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Pick From Selected List Of Premium Products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return MyProductItem(product: product);
                },
              ),
            )
          ],
        ));
  }
}
