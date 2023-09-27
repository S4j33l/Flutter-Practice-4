import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:internship_application_4/theme/application_theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LatitudeLongitudePage extends StatefulWidget {
  const LatitudeLongitudePage({super.key});

  @override
  State<LatitudeLongitudePage> createState() => _LatitudeLongitudePageState();
}

class _LatitudeLongitudePageState extends State<LatitudeLongitudePage> {
  String currentLatitude = "";
  String currentLongitude = "";
  String newLatitude = "";
  String newLongitude = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Your current latitude is: \n $currentLatitude",
              style: appTheme.textTheme.displayMedium!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            Text(
              "Your current longitude is: \n $currentLongitude",
              style: appTheme.textTheme.displayMedium!
                  .copyWith(fontWeight: FontWeight.w900),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.all(10.0),
                    elevation: 0.0),
                onPressed: () {
                  getLongitudeAndLatitude().then((value) => {
                        newLatitude = "${value.latitude}",
                        newLongitude = "${value.longitude}"
                      });
                  setState(() {
                    currentLatitude = newLatitude;
                    currentLongitude = newLongitude;
                  });
                  getLiveLocation();
                },
                child: Text(
                  "Show current latitude and longitude",
                  style: appTheme.textTheme.displayMedium!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.all(10.0),
                    elevation: 0.0),
                onPressed: () {
                  openGoogleMaps(currentLatitude, currentLongitude);
                },
                child: Text(
                  "Show current latitude and longitude on Google Maps",
                  style: appTheme.textTheme.displayMedium!
                      .copyWith(fontWeight: FontWeight.w900, fontSize: 14.0),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.all(10.0),
                    elevation: 0.0),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Go back",
                  style: appTheme.textTheme.displayMedium!
                      .copyWith(fontWeight: FontWeight.w900, fontSize: 14.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getLongitudeAndLatitude() async {
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      return Future.error("Location is disabled");
    }
    LocationPermission locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.deniedForever) {
        return Future.error("Location services denied");
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void getLiveLocation() {
    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 100,
    );
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position p) {
      setState(() {
        currentLatitude = p.latitude.toString();
        currentLongitude = p.longitude.toString();
      });
    });
  }

  Future<void> openGoogleMaps(String latitude, String longitude) async {
    String googleMapsURL =
        "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
    await canLaunchUrlString(googleMapsURL)
        ? await launchUrlString(googleMapsURL)
        : throw "Couldn't launch $googleMapsURL";
  }
}
