import 'package:brmaker/etapes/derniereEtape.dart';
import 'package:brmaker/etapes/etape5bis.dart';
import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class Etape6 extends StatelessWidget {
  const Etape6({super.key});

  @override
  Widget build(BuildContext context) {
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
          Row(
            children: [
              Image.asset(
                'Assets/Images/beermakerlogo350.png',
                width: 150,
                alignment: Alignment.topLeft,
              ),
              const Text(
                "Etapes de fabrication",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 0, fontSize: 15),
              ),
            ],
          ),
          const Text(
            "6- Le sucrage",
            style:
                TextStyle(fontWeight: FontWeight.bold, height: 0, fontSize: 20),
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Pour relancer la fermentation qui se fera en bouteille et qui permet d’obtenir de la mousse, incorporer 4 à 6 g de sucre par litre de bière.",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
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
                    MaterialPageRoute(builder: (context) => const Etape5bis()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.arrow_circle_left_outlined,
                        color: Colors.black, size: 40),
                  ],
                ),
              ),
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
                    Icon(Icons.home, color: Colors.black, size: 40),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DerniereEtape()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.arrow_circle_right_outlined,
                        color: Colors.black, size: 40),
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



/*
class Suite extends StatelessWidget {
  const Suite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Test"),
    );
  }
}
*/
