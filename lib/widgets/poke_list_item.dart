import 'package:flutter/material.dart';
import 'package:pokedex_project/constat/constats.dart';
import 'package:pokedex_project/constat/ui_helper.dart';
import 'package:pokedex_project/model/pokemon_model.dart';
import 'package:pokedex_project/pages/detail_page.dart';
import 'package:pokedex_project/widgets/poke_image_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Constants.getPokemonNameTextStyle(),
              ),
              Chip(
                label: Text(pokemon.type![0]),
              ),
              Expanded(child: PokeImageAndBall(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
