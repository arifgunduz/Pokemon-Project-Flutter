import 'package:flutter/material.dart';
import 'package:pokedex_project/widgets/app_title.dart';

import 'package:pokedex_project/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context,orientation)=>
         Column(
          children: [
            AppTitle(),
            const Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
