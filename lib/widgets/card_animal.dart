import 'package:flutter/material.dart';

class CardAnimal extends StatelessWidget {
  final String nameAnimal;
  final String descriptionAnimal;
  final AssetImage imageAnimal;

  const CardAnimal(
      {Key key, this.nameAnimal, this.descriptionAnimal, this.imageAnimal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 224,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          // image: AssetImage('assets/images/background-lion.png'),
          image: imageAnimal,
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, bottom: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nameAnimal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  // 'Viven en poblaciones \ndispersos en la sabana...',
                  '$descriptionAnimal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 81,
            width: 55,
            decoration: BoxDecoration(
              color: Color(0xffCD8C2D),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
