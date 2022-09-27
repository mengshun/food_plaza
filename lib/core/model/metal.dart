// To parse this JSON data, do
//
//     final msMetal = msMetalFromJson(jsonString);

import 'dart:convert';

MsMetal msMetalFromJson(String str) => MsMetal.fromJson(json.decode(str));

class MsMetal {
  MsMetal({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexity,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  String? id;
  List<String>? categories;
  String? title;
  int? affordability;
  int? complexity;
  String? imageUrl;
  int? duration;
  List<String>? ingredients;
  List<String>? steps;
  bool? isGlutenFree;
  bool? isVegan;
  bool? isVegetarian;
  bool? isLactoseFree;

  factory MsMetal.fromJson(Map<String, dynamic> json) => MsMetal(
    id: json["id"],
    categories: List<String>.from(json["categories"].map((x) => x)),
    title: json["title"],
    affordability: json["affordability"],
    complexity: json["complexity"],
    imageUrl: json["imageUrl"],
    duration: json["duration"],
    ingredients: List<String>.from(json["ingredients"].map((x) => x)),
    steps: List<String>.from(json["steps"].map((x) => x)),
    isGlutenFree: json["isGlutenFree"],
    isVegan: json["isVegan"],
    isVegetarian: json["isVegetarian"],
    isLactoseFree: json["isLactoseFree"],
  );
}
