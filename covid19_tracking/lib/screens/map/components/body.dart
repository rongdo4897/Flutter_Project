import 'dart:async';

import 'package:covid19_tracking/model/country_data.dart';
import 'package:covid19_tracking/service/api_service.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Completer<GoogleMapController> _controller = Completer();
  ApiService client = ApiService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: FutureBuilder(
        future: client.getAllCountry(),
        builder: (context, AsyncSnapshot<List<CountryData>> snapshot) {
          if (snapshot.hasData) {
            List<CountryData> listCountryData = snapshot.data ?? [];

            return GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  target: LatLng(listCountryData[0].latitude ?? 0.0, listCountryData[0].longitude ?? 0.0), zoom: 12),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: {
                ...List.generate(listCountryData.length, (index) => locationMarker(
                    latLng: LatLng(listCountryData[index].latitude ?? 0.0, listCountryData[index].longitude ?? 0.0),
                    id: "id_$index",
                    title: "Confirmed: ${listCountryData[index].confirmed}\nRecovered: ${listCountryData[index].recovered}\n${listCountryData[index].deaths}"),) 
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Marker locationMarker(
      {required LatLng latLng, required String id, required String title}) {
    return Marker(
      markerId: MarkerId(id),
      position: latLng,
      infoWindow: InfoWindow(title: title),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    );
  }
}
