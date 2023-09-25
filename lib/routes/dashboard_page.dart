import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/theme/application_theme.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  double starRatingValue = 0.0;
  int numberOfRatings = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Eddie Bremmer",
                      style: appTheme.textTheme.displayMedium!.copyWith(
                          color: const Color.fromRGBO(40, 71, 100, 1),
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        RatingBar.builder(
                            itemSize: 30.0,
                            initialRating: 0,
                            itemCount: 5,
                            minRating: 1,
                            maxRating: 5,
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(70, 208, 217, 1),
                                ),
                            onRatingUpdate: (value) {
                              setState(() {
                                starRatingValue = value;
                                numberOfRatings++;
                              });
                            }),
                        const SizedBox(width: 5.0),
                        Text(
                          "($numberOfRatings)",
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const Icon(Icons.location_pin),
                        Text(
                          "Los Angeles, CA",
                          style: appTheme.textTheme.displayMedium!
                              .copyWith(fontSize: 12.0),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 20.0),
                const CircleAvatar(
                  radius: 55.0,
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(243, 247, 251, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    Text(
                      "FindHome Gold",
                      style: appTheme.textTheme.displayMedium!.copyWith(
                        color: const Color.fromRGBO(40, 71, 100, 1),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 150,
                      width: 100,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10.0,
                        ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: ((context, index) => Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40.0))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Estadistics",
                                    style: appTheme.textTheme.displayMedium,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      const Text("Level = 30"),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              const SizedBox(width: 10.0),
                                              const Icon(Icons.money),
                                              Text(
                                                "10 sales complete",
                                                softWrap: true,
                                                style: appTheme
                                                    .textTheme.displayMedium!
                                                    .copyWith(fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              const SizedBox(width: 10.0),
                                              const Icon(Icons.person),
                                              Text(
                                                "09 clients",
                                                style: appTheme
                                                    .textTheme.displayMedium!
                                                    .copyWith(fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "View more info",
                                    style: appTheme.textTheme.displayMedium!
                                        .copyWith(fontSize: 12.0),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
