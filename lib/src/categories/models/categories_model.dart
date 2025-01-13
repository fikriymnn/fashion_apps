import 'package:meta/meta.dart';
import 'dart:convert';

List<Categories> categoriesFromJson(String str) =>
    List<Categories>.from(json.decode(str).map((x) => x.toJson()));

String categoriesToJson(List<Categories> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Categories {
  final String title;
  final int id;
  final String imageUrl;

  Categories({
    required this.title,
    required this.id,
    required this.imageUrl,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        title: json['title'],
        id: json['id'],
        imageUrl: json['image_url'],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "id": id,
        "image_url": imageUrl,
      };
}
