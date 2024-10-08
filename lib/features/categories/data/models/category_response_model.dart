import 'package:json_annotation/json_annotation.dart';

part 'category_response_model.g.dart';

@JsonSerializable()
class CategoryResponseModel {
  CategoryResponseModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);
}

@JsonSerializable()
class Rating {
  Rating({
    required this.rate,
    required this.count,
  });

  final double? rate;
  final int? count;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
