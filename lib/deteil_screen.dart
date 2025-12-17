import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokemon_app/info_widjets.dart';
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
              Container(
                alignment: Alignment(0.9, -1),
                child: SvgPicture.network('https://raw.githubusercontent.com/sokka-ctrl/img/2ccbe1de0ef420d52ba5b69eb2b4ef8d00f7c775/Pokeball.svg', height: 250,),
              ),
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
                        fontSize: 30,
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
      
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 10, color: model.color),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Align(
                  alignment: Alignment(0, 1),
                  child: Container(
                    height: 590,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 300, left: 10),
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
                
                            // stats num
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20, top: 300),
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
                                  margin: EdgeInsets.only(top: 300),
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_hp / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_atk / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_def / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_satk / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_sdef / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 260,
                                  child: LinearProgressIndicator(
                                    value: model.stat_spd / 200,
                                    minHeight: 8,
                                    borderRadius: BorderRadius.circular(10),
                                    color: model.color,
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
              ),
              Container(
                width: 340,
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment(0.2, 0.3),
                child: Text(model.description, style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment(0, -0.7),
                child: Image.network(
                  model.image,
                  height: 250,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 400, left: 50),
                child: InfoWidjets(model: model),
              ),
              Container(
                alignment: Alignment(-0.9, -0.5),
                child: Text('ᐸ', style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              Container(
                alignment: Alignment(0.9, -0.5),
                child: Text('ᐳ', style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
