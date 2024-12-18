import 'package:evcharge/constants.dart';
import 'package:evcharge/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../services/location_services.dart';
import '../services/open_map_app.dart';

class InsideCardItemView extends StatefulWidget {
  const InsideCardItemView({super.key});

  static String id = "InsideCardItemView";

  @override
  State<InsideCardItemView> createState() => _InsideCardItemViewState();
}

class _InsideCardItemViewState extends State<InsideCardItemView> {
  late CameraPosition initialCameraPosition;
  late LocationServices locationServices;

  void initState() {
    initialCameraPosition = CameraPosition(
        zoom: 18,
        target: LatLng(
          31.917656,
          35.902432,
        ));
    locationServices = LocationServices();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: kPrimaryColor,
          ),
        ),
        elevation: 2,
        title: Text(
          "Station Information",
          style: TextStyle(color: kPrimaryColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 175, 175, 175),
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/station.PNG"),
                  )),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 175, 175, 175),
                      offset: Offset(0, 2),
                      blurRadius: 3,
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Station Name",
                    style: TextStyle(fontFamily: "NEOSANSW23", fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Estimated time : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "NEOSANSW23"),
                      ),
                      Text(
                        "18 Km",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Address : ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "NEOSANSW23"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Text(
                          "Irbid - Abdull Hamid Sharaf ST",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                    markers: {
                      Marker(
                          markerId: MarkerId("1"),
                          draggable: true,
                          position: LatLng(
                            31.917656,
                            35.902432,
                          ))
                    },
                    zoomControlsEnabled: false,
                    initialCameraPosition: initialCameraPosition)),
            SizedBox(
              height: 24,
            ),
            CustomButton(
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
                text: "Get Diriction"),
          ],
        ),
      ),
    );
  }
}
