import 'package:evcharge/core/util/app_images.dart';
import 'package:flutter/material.dart';

class StationsEntity {
  final String? image;
  final String? name;
  final double? distance;
  final String? lat;
  final String? long;
  final String? adress;

  StationsEntity({
    required this.lat,
    required this.long,
    required this.image,
    required this.distance,
    required this.name,
    required this.adress,
  });

  ImageProvider get imageProvider {
    if (image != null && image!.trim().isNotEmpty && image != '-') {
      return NetworkImage(image!);
    }
    return AssetImage(Assets.imagesStation);
  }
}
