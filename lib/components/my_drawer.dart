import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 75,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyListTile(
                icon: Icons.home,
                title: const Text("Shop Page"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/shop_page");
                },
              ),
              MyListTile(
                icon: Icons.shopping_cart,
                title: const Text("Cart Page"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),

              MyListTile(
                icon: Icons.settings,
                title: const Text("Settings Page"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/settings_page");
                },
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.exit_to_app,
              title: const Text("Exit"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/intro_page");
              },
            ),
          )
        ],
      ),
    );
  }
}
