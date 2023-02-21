class Cocktail {
  Cocktail({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIBA,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsES,
    this.strInstructionsDE,
    this.strInstructionsFR,
    this.strInstructionsIT,
    this.strInstructionsZHHANS,
    this.strInstructionsZHHANT,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,});

  Cocktail.fromJson(dynamic json) {
    idDrink = json['idDrink'];
    strDrink = json['strDrink'];
    strDrinkAlternate = json['strDrinkAlternate'];
    strTags = json['strTags'];
    strVideo = json['strVideo'];
    strCategory = json['strCategory'];
    strIBA = json['strIBA'];
    strAlcoholic = json['strAlcoholic'];
    strGlass = json['strGlass'];
    strInstructions = json['strInstructions'];
    strInstructionsES = json['strInstructionsES'];
    strInstructionsDE = json['strInstructionsDE'];
    strInstructionsFR = json['strInstructionsFR'];
    strInstructionsIT = json['strInstructionsIT'];
    strInstructionsZHHANS = json['strInstructionsZH-HANS'];
    strInstructionsZHHANT = json['strInstructionsZH-HANT'];
    strDrinkThumb = json['strDrinkThumb'];
    strIngredient1 = json['strIngredient1'];
    strIngredient2 = json['strIngredient2'];
    strIngredient3 = json['strIngredient3'];
    strIngredient4 = json['strIngredient4'];
    strIngredient5 = json['strIngredient5'];
    strIngredient6 = json['strIngredient6'];
    strIngredient7 = json['strIngredient7'];
    strIngredient8 = json['strIngredient8'];
    strIngredient9 = json['strIngredient9'];
    strIngredient10 = json['strIngredient10'];
    strIngredient11 = json['strIngredient11'];
    strIngredient12 = json['strIngredient12'];
    strIngredient13 = json['strIngredient13'];
    strIngredient14 = json['strIngredient14'];
    strIngredient15 = json['strIngredient15'];
    strMeasure1 = json['strMeasure1'];
    strMeasure2 = json['strMeasure2'];
    strMeasure3 = json['strMeasure3'];
    strMeasure4 = json['strMeasure4'];
    strMeasure5 = json['strMeasure5'];
    strMeasure6 = json['strMeasure6'];
    strMeasure7 = json['strMeasure7'];
    strMeasure8 = json['strMeasure8'];
    strMeasure9 = json['strMeasure9'];
    strMeasure10 = json['strMeasure10'];
    strMeasure11 = json['strMeasure11'];
    strMeasure12 = json['strMeasure12'];
    strMeasure13 = json['strMeasure13'];
    strMeasure14 = json['strMeasure14'];
    strMeasure15 = json['strMeasure15'];
    strImageSource = json['strImageSource'];
    strImageAttribution = json['strImageAttribution'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];
  }

  String? idDrink;
  String? strDrink;
  dynamic strDrinkAlternate;
  String? strTags;
  dynamic strVideo;
  String? strCategory;
  String? strIBA;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;
  dynamic strInstructionsES;
  String? strInstructionsDE;
  dynamic strInstructionsFR;
  String? strInstructionsIT;
  dynamic strInstructionsZHHANS;
  dynamic strInstructionsZHHANT;
  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  dynamic strMeasure5;
  dynamic strMeasure6;
  dynamic strMeasure7;
  dynamic strMeasure8;
  dynamic strMeasure9;
  dynamic strMeasure10;
  dynamic strMeasure11;
  dynamic strMeasure12;
  dynamic strMeasure13;
  dynamic strMeasure14;
  dynamic strMeasure15;
  dynamic strImageSource;
  dynamic strImageAttribution;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  List<String?> get ingredients =>
      [
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
      ]
        ..removeWhere((element) => element == null || element.isEmpty);

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['idDrink'] = idDrink;
    map['strDrink'] = strDrink;
    map['strDrinkAlternate'] = strDrinkAlternate;
    map['strTags'] = strTags;
    map['strVideo'] = strVideo;
    map['strCategory'] = strCategory;
    map['strIBA'] = strIBA;
    map['strAlcoholic'] = strAlcoholic;
    map['strGlass'] = strGlass;
    map['strInstructions'] = strInstructions;
    map['strInstructionsES'] = strInstructionsES;
    map['strInstructionsDE'] = strInstructionsDE;
    map['strInstructionsFR'] = strInstructionsFR;
    map['strInstructionsIT'] = strInstructionsIT;
    map['strInstructionsZH-HANS'] = strInstructionsZHHANS;
    map['strInstructionsZH-HANT'] = strInstructionsZHHANT;
    map['strDrinkThumb'] = strDrinkThumb;
    map['strIngredient1'] = strIngredient1;
    map['strIngredient2'] = strIngredient2;
    map['strIngredient3'] = strIngredient3;
    map['strIngredient4'] = strIngredient4;
    map['strIngredient5'] = strIngredient5;
    map['strIngredient6'] = strIngredient6;
    map['strIngredient7'] = strIngredient7;
    map['strIngredient8'] = strIngredient8;
    map['strIngredient9'] = strIngredient9;
    map['strIngredient10'] = strIngredient10;
    map['strIngredient11'] = strIngredient11;
    map['strIngredient12'] = strIngredient12;
    map['strIngredient13'] = strIngredient13;
    map['strIngredient14'] = strIngredient14;
    map['strIngredient15'] = strIngredient15;
    map['strMeasure1'] = strMeasure1;
    map['strMeasure2'] = strMeasure2;
    map['strMeasure3'] = strMeasure3;
    map['strMeasure4'] = strMeasure4;
    map['strMeasure5'] = strMeasure5;
    map['strMeasure6'] = strMeasure6;
    map['strMeasure7'] = strMeasure7;
    map['strMeasure8'] = strMeasure8;
    map['strMeasure9'] = strMeasure9;
    map['strMeasure10'] = strMeasure10;
    map['strMeasure11'] = strMeasure11;
    map['strMeasure12'] = strMeasure12;
    map['strMeasure13'] = strMeasure13;
    map['strMeasure14'] = strMeasure14;
    map['strMeasure15'] = strMeasure15;
    map['strImageSource'] = strImageSource;
    map['strImageAttribution'] = strImageAttribution;
    map['strCreativeCommonsConfirmed'] = strCreativeCommonsConfirmed;
    map['dateModified'] = dateModified;
    return map;
  }

}