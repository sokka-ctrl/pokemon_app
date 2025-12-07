import 'package:flutter/material.dart';
import 'package:pokemon_app/pokedex_screen.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel model;

  const PokemonItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: model.color,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      height: 200,
      width: 200,
      child: Column(
        children: [
          Text(model.number),
          Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Image.network(
                  model.image,
                  height: 120,
                ),
              ),
            ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: model.color,
            ),
            child: Text(
              model.name,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
