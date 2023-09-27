import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:internship_application_4/routes/show_latitude_and_longitude.dart';
import 'package:internship_application_4/theme/application_theme.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: 410,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/houseKitchen.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                margin: const EdgeInsets.only(top: 320),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(Icons.location_pin),
                          Text(
                            "Los Angeles, CA",
                            style: appTheme.textTheme.displayMedium!.copyWith(
                                fontSize: 12.0, fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 25.0,
                        child: Image(
                          image: AssetImage("assets/images/avatar.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Special House Mix",
                  style: appTheme.textTheme.titleLarge!
                      .copyWith(fontSize: 24.0, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "High-speed wifi",
                      style: appTheme.textTheme.displayMedium!
                          .copyWith(fontSize: 12.0),
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(Icons.control_point),
                    const SizedBox(width: 5.0),
                    Text(
                      "Deskspace",
                      style: appTheme.textTheme.displayMedium!
                          .copyWith(fontSize: 12.0),
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(Icons.control_point),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const LatitudeLongitudePage());
                      },
                      child: Text(
                        "Safe location",
                        style: appTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 12.0),
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(Icons.control_point),
                    const SizedBox(width: 5.0),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    const Icon(Icons.bed, size: 40.0),
                    Text(
                      "2",
                      style: appTheme.textTheme.titleLarge!
                          .copyWith(fontSize: 30.0),
                    ),
                    const SizedBox(width: 25.0),
                    const Icon(Icons.bathroom, size: 40.0),
                    Text(
                      "1",
                      style: appTheme.textTheme.titleLarge!
                          .copyWith(fontSize: 30.0),
                    ),
                    const SizedBox(width: 25.0),
                    const Icon(Icons.kitchen, size: 40.0),
                    Text(
                      "1",
                      style: appTheme.textTheme.titleLarge!
                          .copyWith(fontSize: 30.0),
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.info),
                      Text(
                        "Information",
                        style: appTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.comment),
                      Text(
                        "Comments",
                        style: appTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.shop),
                      Text(
                        "Offers",
                        style: appTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 14.0),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.share),
                      Text(
                        "Shared",
                        style: appTheme.textTheme.displayMedium!
                            .copyWith(fontSize: 14.0),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Description",
                  style: appTheme.textTheme.titleLarge!
                      .copyWith(fontSize: 24.0, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.",
                  style: appTheme.textTheme.displayMedium!
                      .copyWith(fontSize: 14.0),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 730, left: 20, right: 20),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "\$1500 USD",
                  style: appTheme.textTheme.titleLarge!
                      .copyWith(fontSize: 22.0, fontWeight: FontWeight.w900),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(70, 208, 218, 1),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Reserve now!",
                    style: appTheme.textTheme.displayMedium!
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Row(
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10.0),
                      elevation: 0.0),
                  onPressed: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.black),
                ),
                const SizedBox(width: 60.0),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    color: Color.fromRGBO(108, 199, 117, 1),
                  ),
                  child: Text(
                    "Available",
                    style: appTheme.textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  ),
                ),
                const SizedBox(width: 60.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      elevation: 0.0),
                  onPressed: () {},
                  child: const Icon(
                    Icons.heart_broken,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
