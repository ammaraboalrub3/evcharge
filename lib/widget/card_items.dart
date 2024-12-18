import 'package:evcharge/constants.dart';
import 'package:flutter/material.dart';

import '../services/location_services.dart';
import '../services/open_map_app.dart';
import '../views/inside_card_item_view.dart';

class CardItems extends StatefulWidget {
  const CardItems({super.key});

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  late LocationServices locationServices;
  @override
  void initState() {
    locationServices = LocationServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, InsideCardItemView.id);
        },
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 18),
            child: ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 241, 241, 241)),
                  height: 75,
                  width: 75,
                  child: Image.asset(logoImage)),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: GestureDetector(
                  onTap: () async {
                    await locationServices.checkAndRequestLocationScervice();
                    var hasPermission = await locationServices
                        .checkAndRequestLocationPermission();
                    if (hasPermission) {
                      OpenMap().openMap(
                        31.917656,
                        35.902432,
                      );
                    }
                  },
                  child: Icon(
                    Icons.location_on_sharp,
                    color: kPrimaryColor,
                    size: 24,
                  ),
                ),
              ),
              title: const Row(
                children: [
                  Text(
                    "Panorama Mall",
                    style: TextStyle(fontFamily: "NEOSANSW23", fontSize: 12),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                      height: 20,
                      width: 10,
                      child: VerticalDivider(
                        thickness: 2,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "10.5 km",
                    style: TextStyle(
                        fontSize: 13, color: Color.fromARGB(255, 6, 152, 45)),
                  ),
                ],
              ),
              subtitle: const Row(
                children: [
                  Text(
                    "Estimated time",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "20m",
                    style: TextStyle(
                        color: Color.fromARGB(255, 6, 152, 45), fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
