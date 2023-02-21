import 'cocktail.dart';

class Drink {
  Drink({
    required this.drinks,
  });

  Drink.fromJson(dynamic json) {
    if (json['drinks'] != null) {
      drinks = [];
      json['drinks'].forEach((v) {
        drinks.add(Cocktail.fromJson(v));
      });
    }
  }

  List<Cocktail> drinks = List.empty(growable: true);

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (drinks != null) {
      map['drinks'] = drinks.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
