import 'package:flutter/material.dart';

class ItemContinentSelected extends StatelessWidget {
  const ItemContinentSelected({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      height: 30,
      width: 70,
      decoration: BoxDecoration(
        color: Color(0xffCD8C2D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'Africa',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
