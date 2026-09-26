import 'package:flutter/material.dart';

class Target extends StatelessWidget {
  final VoidCallback onTap;

  const Target({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Icon(
            Icons.ads_click,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}