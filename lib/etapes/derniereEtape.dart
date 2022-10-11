import 'package:brmaker/etapes/etape6.dart';
import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class DerniereEtape extends StatelessWidget {
  const DerniereEtape({super.key});

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
            "7- La mise en bouteille",
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
                  "- Mettre en bouteille (stérilisées et séchées) en utilisant un tuyau d'extraction avec embout anti-lie. ",
                  style: TextStyle(height: 0, fontSize: 14),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 7),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Le but est de récupérer le liquide clair et d’éliminer les précipités et dépots. placer l’embout anti-lie sur le fond de la bonbonne et l’autre bout au fond de la bouteille. La bonbonne doit être placée très en hauteur par rapport à la bouteille.",
                  style: TextStyle(height: 0, fontSize: 14),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 7),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Utiliser des bouteilles en verre teinté propres et sèches, qui ferment avec un bouchon à vis ou à clapet. Les bouteilles doivent être conservées verticalement.",
                  style: TextStyle(height: 0, fontSize: 14),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 7),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Pendant une semaine conserver ces bouteilles à 20°C. Puis pendant 4 à 8 semaines, les gardes au frais, entre 6 et 10°C.",
                  style: TextStyle(height: 0, fontSize: 14),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 7),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- La bière se conserve 1 an, idéalement entre 10 et 15°C à l’abri de la lumière ou simplement au réfrigérateur.",
                  style: TextStyle(height: 0, fontSize: 14),
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
                    MaterialPageRoute(builder: (context) => const Etape6()),
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
