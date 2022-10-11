import 'package:brmaker/mainBeerM.dart';
import 'package:flutter/material.dart';

class Outils extends StatelessWidget {
  const Outils({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _valeurSaisie = "";

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
                "Outils de fabrication",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 0, fontSize: 15),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Volume de bière a fabriquer"),
                  validator: (valeur) {
                    if (valeur == null || valeur.isEmpty) {
                      return 'Entré une donnée';
                    } else {
                      _valeurSaisie = valeur.toString();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              Flexible(
                child: const Text(
                  "L",
                  style: TextStyle(height: 0, fontSize: 13),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Degré d'alccol rechercher"),
                  validator: (valeur) {
                    if (valeur == null || valeur.isEmpty) {
                      return 'Entré une donnée';
                    } else {
                      _valeurSaisie = valeur.toString();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              Flexible(
                child: const Text(
                  "%",
                  style: TextStyle(height: 0, fontSize: 13),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Moyenne EBC de grains utilisés"),
                  validator: (valeur) {
                    if (valeur == null || valeur.isEmpty) {
                      return 'Entré une donnée';
                    } else {
                      _valeurSaisie = valeur.toString();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
              Flexible(
                child: const Text(
                  "EBC",
                  style: TextStyle(height: 0, fontSize: 13),
                ),
              ),
            ],
          ),
          const Text(
            "",
            style: TextStyle(height: 1, fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Background color
                ),
                child: Text('Calculer'),
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

void srmToRGB(double srm) {
  double r, g, b;
  r = g = b = 0;
  if (srm >= 0 && srm <= 1) {
    r = 240;
    g = 239;
    b = 181;
  } else if (srm > 1 && srm <= 2) {
    r = 233;
    g = 215;
    b = 108;
  } else if (srm > 2) {
    // Set red decimal
    if (srm < 70.6843) {
      r = 243.8327 - (6.4040 * srm) + (0.0453 * srm * srm);
    } else {
      r = 17.5014;
    }
    // Set green decimal
    if (srm < 35.0674) {
      g = 230.929 - 12.484 * srm + 0.178 * srm * srm;
    } else {
      g = 12.0382;
    }
    // Set blue decimal
    if (srm < 4) {
      b = -54 * srm + 216;
    } else if (srm >= 4 && srm < 7) {
      b = 0;
    } else if (srm >= 7 && srm < 9) {
      b = 13 * srm - 91;
    } else if (srm >= 9 && srm < 13) {
      b = 2 * srm + 8;
    } else if (srm >= 13 && srm < 17) {
      b = -1.5 * srm + 53.5;
    } else if (srm >= 17 && srm < 22) {
      b = 0.6 * srm + 17.8;
    } else if (srm >= 22 && srm < 27) {
      b = -2.2 * srm + 79.4;
    } else if (srm >= 27 && srm < 34) {
      b = -0.4285 * srm + 31.5714;
    } else {
      b = 17;
    }
  }
  /*
        int red = r.intValue();
        int green = g.intValue();
        int blue = b.intValue();
        //String rgb  = "#"+red.toHexString(red)+green.toHexString(green)+blue.toHexString(blue);
        String rr = red.toHexString(red);
        String gg = green.toHexString(green);
        String bb = blue.toHexString(blue);

        String rgb = "#";
        if (rr.length()<2){
            rr="0"+rr;
        }else if (gg.length()<2){
            gg="0"+gg;
        }else if (bb.length()<2){
            bb="0"+bb;
        }
        rgb = rgb+rr+gg+bb;
        return rgb;
        */
}
