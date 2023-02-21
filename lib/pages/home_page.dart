import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:http_example/models/cocktail.dart';
import 'package:http_example/models/drink.dart';
import 'package:http_example/routes/router.gr.dart';
import '../core/utils/http_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Cocktail>> _futureDrinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Drinks"),
        ),
        body: FutureBuilder(
            future: _futureDrinks,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                List<Cocktail> cocktails = snapshot.data ?? List.empty();
                return GridView.extent(
                    childAspectRatio: 0.715,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    maxCrossAxisExtent: 150,
                    shrinkWrap: true,
                    children: [
                      for (int x = 0; x < cocktails.length; x++)
                        Container(
                            child: InkWell(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(DetailRoute(cocktail: cocktails[x]));
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(
                                  cocktails[x].strDrinkThumb ?? "",
                                  fit: BoxFit.scaleDown,
                                ),
                                Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        cocktails[x].strDrink ?? "NoName",
                                        softWrap: true,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ))
                    ]);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() {
    _futureDrinks = Future.delayed(Duration(seconds: 5))
        .then((value) => http.get(Uri.parse(
            "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita")))
        .then((value) => Drink.fromJson(jsonDecode(value.body)).drinks);
  }
}
