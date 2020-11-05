import 'dart:convert';

List<ProductList> productListFromJson(String str) => List<ProductList>.from(
    json.decode(str).map((x) => ProductList.fromJson(x)));

String productListToJson(List<ProductList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductList {
  ProductList({
    this.id,
    this.name,
    this.category,
    this.price,
    this.rating,
    this.details,
    this.ingredients,
    this.img,
    this.color,
  });

  final int id;
  final String name;
  final String category;
  final int price;
  final double rating;
  final String details;
  final List<Ingredient> ingredients;
  final String img;
  final String color;

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        price: json["price"],
        rating: json["rating"].toDouble(),
        details: json["details"],
        ingredients: List<Ingredient>.from(
            json["ingredients"].map((x) => Ingredient.fromJson(x))),
        img: json["img"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "price": price,
        "rating": rating,
        "details": details,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "img": img,
        "color": color,
      };
}

class Ingredient {
  Ingredient({
    this.name,
    this.value,
  });

  final String name;
  final double value;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        name: json["name"],
        value: json["value"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
      };
}
