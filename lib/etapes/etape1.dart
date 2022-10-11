import 'package:brmaker/etapes/prealable.dart';
import 'package:brmaker/etapes/etape2.dart';
import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class Etape1 extends StatelessWidget {
  const Etape1({super.key});

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
            "1- L'empâtage",
            style:
                TextStyle(fontWeight: FontWeight.bold, height: 0, fontSize: 20),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "Note: Le malt blond peut s'utiliser seul.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, height: 0, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Les malts plus foncés ne s’utilisent qu’en petite dose pour moduler le goût de la bière.",
                  style: TextStyle(height: 2, fontSize: 14),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Si vous avez achetez du malt en grain entier, le concasser avec un moulin à céréales, un mixer ou encore un rouleau à pâtisserie.",
                  style: TextStyle(height: 2, fontSize: 14),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Définissez la quantité d’eau de brassage nécessaire, puis versez la dans une grande casserole. ",
                  style: TextStyle(height: 2, fontSize: 14),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "- Porter cette eau à une température de 50 °C en vérifiant avec le thermomètre, puis ajouter le malt concassé.",
                  style: TextStyle(height: 2, fontSize: 14),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Fabrication()),
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
                    MaterialPageRoute(builder: (context) => const Etape2()),
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
