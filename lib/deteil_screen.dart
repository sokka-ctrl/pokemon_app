import 'package:flutter/material.dart';
import 'package:pokemon_app/pokedex_screen.dart';

class DeteilScreen extends StatelessWidget {
  final PokemonModel model;

  const DeteilScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      child: Text(
                        '«',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
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
                child: Container(
                  height: 550,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 180, left: 10),
                                child: Text('HP'),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 8, left: 10),
                                child: Text('ATK'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Text('DEF'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Text('SATK'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Text('SDEF'),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 8),
                                child: Text('SPD'),
                              ),
                            ],
                          ),
      
                          Divider(
                            height: 20,
                            color: Colors.grey,
                            indent: 20,
                            thickness: 1,
                          ),
      
                          // stat values
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 180),
                                child: Text(model.stat_hp.toString()),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 8),
                                child: Text(model.stat_atk.toString()),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 8),
                                child: Text(model.stat_def.toString()),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 8),
                                child: Text(model.stat_satk.toString()),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 8),
                                child: Text(model.stat_sdef.toString()),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20, top: 8),
                                child: Text(model.stat_spd.toString()),
                              ),
                            ],
                          ),
      
                          VerticalDivider(
                            width: 10,
                            thickness: 1,
                            color: Colors.black,
                          ),
      
                          // indicators
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 180),
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_hp / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_atk / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_def / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_satk / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_sdef / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                width: 260,
                                child: LinearProgressIndicator(
                                  value: model.stat_spd / 100,
                                  minHeight: 8,
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
      
              Container(
                alignment: Alignment(0, -0.7),
                child: Image.network(
                  model.image,
                  height: 250,
                ),
              ),
      
              Container(
                alignment: Alignment(-0.9, -0.5),
                child: Text('ᐸ', style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              Container(
                alignment: Alignment(0.9, -0.5),
                child: Text('ᐳ', style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              Container(
                alignment: Alignment(0, -0.1),
                // child: GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(),
                //     itemBuilder: model.skills.skilllist)
              )
            ],
          ),
        ),
      ),
    );
  }
}
