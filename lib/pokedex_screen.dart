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
  String descBulbasaur = 'There is a plant seed on its back right from the day this Pokémon is born. The seed slowly grows larger.';
  String descCharmander = 'It has a preference for hot things. When it rains, steam is said to spout from the tip of its tail.';
  String descButerfree = 'In battle, it flaps its wings at great speed to release highly toxic dust into the air.';
  String descSquirtle = 'When it retracts its long neck into its shell, it squirts out water with vigorous force.';
  String descPikachu = 'Pikachu that can generate powerful electricity have cheek sacs that are extra soft and super stretchy.';
  String descDitto = 'It can reconstitute its entire cellular structure to change into what it sees, but it returns to normal when it relaxes.';
  String descGastly = 'Born from gases, anyone would faint if engulfed by its gaseous body, which contains poison.';
  String descMew = 'When viewed through a microscope, this Pokémon’s short, fine, delicate hair can be seen.';
  String descHypno = 'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.';
@override
  void initState() {
  list = [
    PokemonModel(name: 'Bulbasaur', image: bulbaUrl, color: Colors.green, number: '#001', stat_hp: 045, stat_atk: 049, stat_def: 049, stat_satk: 065, stat_sdef: 065, stat_spd: 045, skills: PokemonSkills(skilllist: ['12', '12'], colorskill: [Colors.green]), weight: 6.9, height: 0.7, moves: 'Chlorophyll Overgrow', description: descBulbasaur),
    PokemonModel(name: 'Charmander', image: charmanderUrl, color: Colors.orange, number: '#004',  stat_hp: 039, stat_atk: 052, stat_def: 043, stat_satk: 060, stat_sdef: 050, stat_spd: 065 , skills: PokemonSkills(skilllist: ['fire'], colorskill: [Colors.red]), weight: 8.5, height: 0.6, moves: 'Mega-Punch Fire-Punch', description: descCharmander),
    PokemonModel(name: 'Squirtle', image: squrirtleUrl, color: Colors.lightBlue, number: '#007', stat_hp: 044, stat_atk: 048, stat_def: 065, stat_satk: 050, stat_sdef: 064, stat_spd: 043, skills: PokemonSkills(skilllist: ['water'], colorskill: [Colors.blue]), weight: 9.0, height: 0.5, moves: 'Torrent Rain-Dish', description: descSquirtle),
    PokemonModel(name: 'Butterfree', image: butterfreeUrl, color: Colors.lightGreen, number: '#012',  stat_hp: 060, stat_atk: 045, stat_def: 050, stat_satk: 090, stat_sdef: 080, stat_spd: 070, skills: PokemonSkills(skilllist: ['bug', 'flying'], colorskill: [Colors.lightGreen, Colors.blueAccent]), weight: 32.0, height: 1.1, moves: 'Compound-Eyes Tinted-Lens', description: descButerfree),
    PokemonModel(name: 'Pikachu', image: pikachuUrl, color: Colors.yellow, number: '#025',  stat_hp: 035, stat_atk: 055, stat_def: 040, stat_satk: 050, stat_sdef: 050, stat_spd: 090, skills: PokemonSkills(skilllist: ['electric'], colorskill: [Colors.yellowAccent]), weight: 6.0, height: 0.4, moves: 'Mega-Punch Pay-Day', description: descPikachu),
    PokemonModel(name: 'Gastly', image: gastlyUrl, color: Colors.deepPurpleAccent, number: '#092',   stat_hp: 030, stat_atk: 035, stat_def: 030, stat_satk: 0100, stat_sdef: 035, stat_spd: 080, skills: PokemonSkills(skilllist: ['ghost', 'poison'], colorskill: [Colors.deepPurpleAccent, Color.fromARGB(100, 123, 66, 145)]), weight: 0.1, height: 1.3, moves: 'Levitate', description: descGastly),
    PokemonModel(name: 'Ditto', image: dittoUrl, color: Color.fromARGB(255, 123, 66, 145), number: '#132',  stat_hp: 048, stat_atk: 048, stat_def: 048, stat_satk: 048, stat_sdef: 048, stat_spd: 048, skills: PokemonSkills(skilllist: ['normal'], colorskill: [Colors.grey]), weight: 4.0, height: 0.3, moves: 'Limber Imposter', description: descDitto),
    PokemonModel(name: 'Hypno', image: hypnoUrl, color: Colors.yellowAccent, number: '#666',  stat_hp: 085, stat_atk: 073, stat_def: 070, stat_satk: 073, stat_sdef: 0115, stat_spd: 067, skills: PokemonSkills(skilllist: ['physic'], colorskill: [Colors.pinkAccent]), weight: 75.6,height: 1.6, moves: 'Insomnia Forewarn', description: descHypno),
    PokemonModel(name: 'Mew', image: mewUrl, color: Colors.pinkAccent, number: '#152',   stat_hp: 100, stat_atk: 100, stat_def: 100, stat_satk: 100, stat_sdef: 100, stat_spd: 100, skills: PokemonSkills(skilllist: ['physic'], colorskill: [Colors.pinkAccent]), weight: 4.0, height: 0.4, moves: 'Synchronize', description: descMew)
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
  final int stat_atk;
  final int stat_def;
  final int stat_satk;
  final int stat_sdef;
  final int stat_spd;
  final int stat_hp;
  final double weight;
  final double height;
  final String moves;
  final String description;
  final PokemonSkills skills;


  PokemonModel({required this.name, required this.image, required this.color, required this.number, required this.stat_atk, required this.stat_def, required this.stat_satk, required this.stat_sdef, required this.stat_spd, required this.stat_hp, required this.skills, required this.weight, required this.height, required this.moves, required this.description});
}

class PokemonSkills{
  final List<String> skilllist;
  final List<Color> colorskill;

  PokemonSkills({required this.skilllist, required this.colorskill});
}
