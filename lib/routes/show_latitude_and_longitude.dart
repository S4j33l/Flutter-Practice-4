import 'package:flutter/material.dart';
import 'package:internship_application_4/theme/application_theme.dart';

class LatitudeLongitudePage extends StatefulWidget {
  const LatitudeLongitudePage({super.key});

  @override
  State<LatitudeLongitudePage> createState() => _LatitudeLongitudePageState();
}

class _LatitudeLongitudePageState extends State<LatitudeLongitudePage> {
  String currentlatitude = "";
  String currentlongitude = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "Your current latitude is: $currentlatitude",
            style: appTheme.textTheme.displayMedium,
          ),
          Text(
            "Your current longitude is: $currentlongitude",
            style: appTheme.textTheme.displayMedium,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Show current latitude and longitude",
              style: appTheme.textTheme.displayMedium,
            ),
          )
        ],
      ),
    );
  }
}
