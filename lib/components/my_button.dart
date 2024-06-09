import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  MyButtom({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(20),
        child: child,
      ),
    );
  }
}
