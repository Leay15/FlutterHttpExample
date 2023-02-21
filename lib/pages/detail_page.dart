import 'package:flutter/material.dart';
import 'package:http_example/models/cocktail.dart';

class DetailPage extends StatelessWidget {
  final Cocktail _cocktail;

  DetailPage(this._cocktail, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                  tag: "${_cocktail.idDrink}",
                  child: Image.network(
                    _cocktail.strDrinkThumb ?? "",
                    fit: BoxFit.cover,
                  )),
            ),
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            title: Text(
              "${_cocktail.strDrink}",
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Instructions",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      _cocktail.strInstructions ?? "",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Ingredients",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    for (int x = 0; x < _cocktail.ingredients.length; x++)
                      Text("${_cocktail.ingredients[x]}")
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
