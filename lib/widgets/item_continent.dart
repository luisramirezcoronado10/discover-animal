import 'package:flutter/material.dart';

class ItemContinent extends StatelessWidget {
  final String continent;

  const ItemContinent({Key key, this.continent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$continent',
      style: TextStyle(
        color: Color(0xff2E2626),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
  }
}
