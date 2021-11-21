import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_project/constat/constats.dart';
import 'package:pokedex_project/constat/ui_helper.dart';
import 'package:pokedex_project/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  PokemonModel pokemon;
  PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: Colors.white),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pokemon.name),
            _buildInformationRow('Height', pokemon.height),
            _buildInformationRow('Weight', pokemon.weight),
            _buildInformationRow('Spawn Time', pokemon.spawnTime),
            _buildInformationRow('Spawn Chance', pokemon.spawnChance),
            _buildInformationRow('Weakness', pokemon.weaknesses),
            _buildInformationRow('Per Evolotion', pokemon.prevEvolution),
            _buildInformationRow('Next Evolotion', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Constants.getPokeInfoTextStyle()),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constants.getPokeLabelTextStyle(),
          )
        else if (value == null)
          Text(
            'Not available',
            style: Constants.getPokeLabelTextStyle(),
          )
        else
          Text(
            value.toString(),
            style: Constants.getPokeLabelTextStyle(),
          ),
      ],
    );
  }
}
