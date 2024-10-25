import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart'; // Generates both Hive and JSON code

@HiveType(typeId: 1)
@JsonSerializable()
class CartModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final double price;

  @HiveField(3)
  final int quantity;

  @HiveField(4)
  final String imagePath;

  CartModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
