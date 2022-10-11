import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class Recettes extends StatelessWidget {
  const Recettes({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      appBar: AppBar(
        title: Text("BeerMaker"),
        actions: [
          Image.asset(
            'Assets/Images/beermakerlogo350.png',
            width: 75,
          ),
        ],
        flexibleSpace: const Image(
          image: AssetImage('Assets/Images/bgor.png'),
          fit: BoxFit.cover,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Image.asset(
            'Assets/Images/beermakerlogo350.png',
            width: 150,
            alignment: Alignment.topLeft,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Voici vos recettes :",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 0, fontSize: 15),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.home, color: Colors.black87, size: 40),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
