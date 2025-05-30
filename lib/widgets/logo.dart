import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final IconData icon;

  const Logo(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(icon, size: 30),
    );
  }
}
