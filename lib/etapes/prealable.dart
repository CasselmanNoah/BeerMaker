import 'package:brmaker/etapes/etape1.dart';
import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class Fabrication extends StatelessWidget {
  const Fabrication({super.key});

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
            "Au préalable:",
            style:
                TextStyle(fontWeight: FontWeight.bold, height: 0, fontSize: 20),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "Vous allez avoir besoin du matériel suivant pour réaliser votre bière :",
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
                  "-Une dame-jeanne",
                  style: TextStyle(height: 2, fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Un barboteur",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Un thermomètre",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Un tuyau d’extraction avec un embout anti-lie",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Plusieurs casseroles",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Une cuillère percée",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Une passoire à mailles fines",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "-Bouteilles en verre à clapet",
                  style: TextStyle(height: 0, fontSize: 15),
                ),
              )
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "Le matériel utile à la fabrication doit être propre et stérilisé.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 0,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            children: [
              Flexible(
                child: const Text(
                  "Nous vous conseillons d’utiliser un désinfectant en poudre vendu dans le commerce et de vous fier aux instruction (à diluer dans de l’eau dans laquelle il faut faire tremper le matériel quelques minutes)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 0,
                    fontSize: 15,
                  ),
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
                    MaterialPageRoute(builder: (context) => const Menu()),
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
                    MaterialPageRoute(builder: (context) => const Etape1()),
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
