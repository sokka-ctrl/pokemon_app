import 'package:flutter/material.dart';
import 'package:pokemon_app/pokemon_item.dart';

import 'deteil_screen.dart';

class PokedexScreen extends StatefulWidget {
  const PokedexScreen({super.key});

  @override
  State<PokedexScreen> createState() => _PokedexScreenState();
}

class _PokedexScreenState extends State<PokedexScreen> {

  String bulbaUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png';
  String charmanderUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png';
  String squrirtleUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png';
  String butterfreeUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/012.png';
  String pikachuUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png';
  String gastlyUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/092.png';
  String dittoUrl = 'https://archives.bulbagarden.net/media/upload/thumb/2/25/0132Ditto.png/250px-0132Ditto.png';
  String mewUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/detail/151.png';
  String hypnoUrl = 'https://static.wikia.nocookie.net/villainsfanon/images/2/27/HypnoPastaNightArt.png/revision/latest/scale-to-width/360?cb=20230322023557';

  List<PokemonModel> list = [];

@override
  void initState() {
  list = [
    PokemonModel(name: 'Bulbasaur', image: bulbaUrl, color: Colors.green, number: '#001', statisticks: 10),
    PokemonModel(name: 'Charmander', image: charmanderUrl, color: Colors.orange, number: '#004', statisticks: 6),
    PokemonModel(name: 'Squirtle', image: squrirtleUrl, color: Colors.lightBlue, number: '#007', statisticks: 1),
    PokemonModel(name: 'Butterfree', image: butterfreeUrl, color: Colors.lightGreen, number: '#012', statisticks: 12),
    PokemonModel(name: 'Pikachu', image: pikachuUrl, color: Colors.yellow, number: '#025', statisticks: 12),
    PokemonModel(name: 'Gastly', image: gastlyUrl, color: Colors.deepPurpleAccent, number: '#092', statisticks: 2),
    PokemonModel(name: 'Ditto', image: dittoUrl, color: Color.fromARGB(100, 197, 188, 149), number: '#132', statisticks: 12),
    PokemonModel(name: 'Hypno', image: hypnoUrl, color: Colors.yellowAccent, number: '#666', statisticks: 2),
    PokemonModel(name: 'Mew', image: mewUrl, color: Colors.pinkAccent, number: '#152', statisticks: 4)
  ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                  ),
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = list[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DeteilScreen(
                              model: item
                            ),
                          ),
                        );
                      },
                      child: PokemonItem(
                        model: item,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonModel{
  final String name;
  final String image;
  final Color color;
  final String number;
  final double statisticks;

  PokemonModel({required this.name, required this.image, required this.color, required this.number, required this.statisticks});
}
