import 'package:flutter/material.dart';
import 'package:pokemon_app/pokedex_screen.dart';

class SkillItem extends StatelessWidget {


  final PokemonModel model;

  const SkillItem({super.key, required this.model});
  @override
  Widget build(BuildContext context) {

    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 2, bottom: 2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(14)
            ),
            child: Text(model.skills.skilllist.toString(), style: TextStyle(fontSize: 10),),
          ),
        ),
      ),
    );
  }
}
