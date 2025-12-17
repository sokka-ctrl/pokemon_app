import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_app/pokedex_screen.dart';

class InfoWidjets extends StatelessWidget {
  const InfoWidjets({super.key, required this.model});

  final PokemonModel model;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: SvgPicture.network('https://raw.githubusercontent.com/sokka-ctrl/img/a922a425c120d8fb366cad6a2c12a5ebcf6b9226/Frame.svg', height: 30,)),
                      Text(model.weight.toString() + ' kg', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),),
                    ],
                  ),
                  Row(
                    children: [
                    ],
                  ),

                ],
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                indent: 40,
                thickness: 1,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: SvgPicture.network('https://raw.githubusercontent.com/sokka-ctrl/img/a922a425c120d8fb366cad6a2c12a5ebcf6b9226/Frame%20(2).svg', height: 30,)),
                      Text(model.height.toString() + 'm', style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic))
                    ],
                  ),
                ],
              ),
              Divider(
                height: 10,
                color: Colors.grey,
                indent: 40,
                thickness: 1,
              ),
              Column(children: [
                Container(
                    child: Text(model.moves.replaceAll(' ', '\n'), style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic))),
              ],)
            ],
          ),
          Row(
            children: [
              Text('weight', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
              Divider(
                height: 10,
                color: Colors.grey,
                indent: 70,
                thickness: 1,
              ),
              Text('height', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
              Divider(
                height: 10,
                color: Colors.grey,
                indent: 70,
                thickness: 1,
              ),
              Text('moves', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),)
            ],
          ),
        ],
      ),
    );
  }
}
