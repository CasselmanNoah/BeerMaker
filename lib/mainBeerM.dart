import 'dart:async';

import 'package:brmaker/etapes/prealable.dart';
import 'package:brmaker/outlis/outilsFabrication.dart';
import 'package:brmaker/recettes/recettes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
          body: Container(
            child: Column(
              children: [
                Image.asset(
                  'Assets/Images/beermakerlogo350.png',
                  width: 150,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Fabrication()),
                        );
                      }, // Handle your onTap
                      child: Ink(
                        width: 350,
                        height: 100,
                        color: Color.fromARGB(255, 243, 195, 21),
                        child: Center(
                          child: Text("Etapes de fabrication"),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                  thickness: 2,
                  height: 30,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Outils()),
                        );
                      }, // Handle your onTap
                      child: Ink(
                        width: 350,
                        height: 100,
                        color: Color.fromARGB(255, 243, 195, 21),
                        child: Center(
                          child: Text(
                            "Outils de fabrication",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black,
                  indent: 40,
                  endIndent: 40,
                  thickness: 2,
                  height: 30,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Recettes()),
                        );
                      }, // Handle your onTap
                      child: Ink(
                        width: 350,
                        height: 100,
                        color: Color.fromARGB(255, 243, 195, 21),
                        child: Center(
                          child: Text("Vos recettes"),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class EtapeFabrication extends StatelessWidget {
  const EtapeFabrication({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Fabrication()),
                );
              },
              child: Container(
                height: 100,
                color: Colors.grey,
                child: Text("Etape de fabrication"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/route1': (BuildContext context) => MyHomePage(),
        '/route2': (BuildContext context) => const Menu(),
        '/route3': (BuildContext context) => const EtapeFabrication(),
        '/route4': (BuildContext context) => const Outils(),
        '/route5': (BuildContext context) => const Recettes(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Menu())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                child: Image.asset(
                  'Assets/Images/beermakerlogo350.png',
                  width: 150,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Beer Maker !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, height: 0, fontSize: 15)),
            ],
          ),
        ],
      )),
    );
  }
}
