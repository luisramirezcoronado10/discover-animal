import 'package:discover_animals/widgets/card_animal.dart';
import 'package:discover_animals/widgets/item_continent.dart';
import 'package:discover_animals/widgets/item_continent_selected.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              navBar(),
              SizedBox(height: 32),
              search(),
              SizedBox(height: 30),
              filters(),
              SizedBox(height: 30),
              cardAnimals(),
            ],
          ),
        ),
      ),
    );
  }

  Widget navBar() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Icon(Icons.notifications_none),
          ],
        ),
        SizedBox(height: 36),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descubre',
                  style: TextStyle(
                    color: Color(0xff2E2626),
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Animales',
                  style: TextStyle(
                      color: Color(0xff2E2626),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget search() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 12),
          Text('Buscar'),
        ],
      ),
    );
  }

  Widget filters() {
    return Container(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ItemContinentSelected(),
          SizedBox(width: 28),
          ItemContinent(continent: 'Australia'),
          SizedBox(width: 28),
          ItemContinent(continent: 'Asia'),
          SizedBox(width: 28),
          ItemContinent(continent: 'Europa'),
          SizedBox(width: 28),
          ItemContinent(continent: 'Norteamerica'),
        ],
      ),
    );
  }

  Widget cardAnimals() {
    return Container(
      height: 380,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardAnimal(
            nameAnimal: 'León Africano',
            descriptionAnimal:
                'Viven en poblaciones \ndispersos en la sabana...',
            imageAnimal: AssetImage('assets/images/background-lion.png'),
          ),
          SizedBox(width: 10),
          CardAnimal(
            nameAnimal: 'Elefante Afri...',
            descriptionAnimal: 'Elefantes viven en \nmanadas por la sabana...',
            imageAnimal: AssetImage('assets/images/background-elefante.png'),
          ),
        ],
      ),
    );
  }
}
