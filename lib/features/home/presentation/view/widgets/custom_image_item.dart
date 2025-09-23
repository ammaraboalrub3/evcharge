import 'package:evcharge/features/home/domain/entities/stations_entity.dart';
import 'package:flutter/material.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem({
    super.key,
    required this.stationsEntity,
  });

  final StationsEntity stationsEntity;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 175, 175, 175),
              offset: Offset(0, 2),
              blurRadius: 3,
            )
          ],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24)),
          image: DecorationImage(
              fit: BoxFit.cover, image: stationsEntity.imageProvider),
        ),
      ),
    );
  }
}
