import 'package:flutter/material.dart';
import 'package:pokemon_app/pokedex_screen.dart';

class DeteilScreen extends StatelessWidget {
  final PokemonModel model;

  const DeteilScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: model.color,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PokedexScreen(),
                          ),
                        );
                      },
                      child: Text('«', style: TextStyle(color: Colors.white, fontSize: 50),)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    model.name,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    model.number,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(height: 600, width: 400, color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 80, top: 150),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                      Container(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                      Container(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                      Container(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                      Container(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                      Container(height: 20),
                      Container(
                        margin: EdgeInsets.only(left: 80),
                        width: 260,
                        child: LinearProgressIndicator(value: 0.1,minHeight: 8,borderRadius: BorderRadius.circular(10),color: Colors.orange),
                      ),
                    ],
                  )
                ],
              ),
              ),
            ),
            Container(
              alignment: Alignment(0, -0.7),
              child: Image.network(model.image, height: 250),
            ),
            Container(
              alignment: Alignment(-0.9, -0.5),
              child: Text(
                'ᐸ',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment(0.9, -0.5),
              child: Text(
                'ᐳ',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
