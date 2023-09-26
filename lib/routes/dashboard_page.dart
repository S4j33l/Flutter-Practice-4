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
  int numberOfOpinions = 0;

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
                  child: Image(
                    image: AssetImage("assets/images/avatar.png"),
                    fit: BoxFit.contain,
                  ),
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
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Container(
                            height: double.infinity,
                            width: 550,
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40.0))),
                            child: Column(
                              children: <Widget>[
                                Text("Information",
                                    style: appTheme.textTheme.displayMedium),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.",
                                  style: appTheme.textTheme.displayMedium!
                                      .copyWith(fontSize: 14.0),
                                  softWrap: true,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "Post",
                      style: appTheme.textTheme.displayMedium!.copyWith(
                        color: const Color.fromRGBO(40, 71, 100, 1),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: double.maxFinite,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 350,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/houseKitchen.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 3.0, top: 7.0, right: 5.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(top: 243),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40.0),
                                          ),
                                          color: Colors.white),
                                      height: 121,
                                      width: 350,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 0),
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Special House Mix",
                                                style: appTheme
                                                    .textTheme.titleLarge!
                                                    .copyWith(fontSize: 24.0, fontWeight: FontWeight.w900),
                                              ),
                                            ),
                                            const SizedBox(height: 5.0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    const CircleAvatar(
                                                      radius: 15.0,
                                                      child: Image(
                                                        image: AssetImage(
                                                            "assets/images/avatar.png"),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5.0),
                                                    Text(
                                                      "Eddie Bremer",
                                                      style: appTheme.textTheme
                                                          .displayMedium!
                                                          .copyWith(
                                                              fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "\$1500 USD",
                                                  style: appTheme
                                                      .textTheme.displayMedium!
                                                      .copyWith(
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10.0),
                                            Row(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    RatingBar.builder(
                                                        itemSize: 20.0,
                                                        initialRating: 0,
                                                        itemCount: 5,
                                                        minRating: 1,
                                                        maxRating: 5,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          70,
                                                                          208,
                                                                          217,
                                                                          1),
                                                                ),
                                                        onRatingUpdate:
                                                            (value) {
                                                          setState(() {
                                                            starRatingValue =
                                                                value;
                                                            numberOfOpinions++;
                                                          });
                                                        }),
                                                  ],
                                                ),
                                                const SizedBox(width: 5.0),
                                                Text(
                                                  "Opinions: $numberOfOpinions",
                                                ),
                                                const SizedBox(width: 33.0),
                                                const Icon(Icons.bed),
                                                const Text("2"),
                                                const Icon(Icons.bathroom),
                                                const Text("1"),
                                                const Icon(Icons.kitchen),
                                                const Text("1"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 250,
                                top: 230,
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0))),
                                  child: const Icon(
                                    Icons.heart_broken_sharp,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 30,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      bottom: 0,
                                      top: 0),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0))),
                                  child: Row(
                                    children: <Widget>[
                                      const Icon(Icons.location_pin,
                                          color:
                                              Color.fromRGBO(217, 233, 244, 1)),
                                      Text(
                                        "Los Angeles, CA",
                                        style: appTheme.textTheme.displayMedium!
                                            .copyWith(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 350,
                                    width: 350,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(60.0)),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/houseKitchen.png"),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 3.0, top: 7.0, right: 5.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(top: 243),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(40.0),
                                          ),
                                          color: Colors.white),
                                      height: 121,
                                      width: 350,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20.0, 10.0, 20.0, 0),
                                        child: Column(
                                          children: <Widget>[
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Special House Mix",
                                                style: appTheme
                                                    .textTheme.titleLarge!
                                                    .copyWith(fontSize: 24.0),
                                              ),
                                            ),
                                            const SizedBox(height: 5.0),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    const CircleAvatar(
                                                      radius: 15.0,
                                                      child: Image(
                                                        image: AssetImage(
                                                            "assets/images/avatar.png"),
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5.0),
                                                    Text(
                                                      "Eddie Bremer",
                                                      style: appTheme.textTheme
                                                          .displayMedium!
                                                          .copyWith(
                                                              fontSize: 14.0),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  "\$1500 USD",
                                                  style: appTheme
                                                      .textTheme.displayMedium!
                                                      .copyWith(
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10.0),
                                            Row(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    RatingBar.builder(
                                                        itemSize: 20.0,
                                                        initialRating: 0,
                                                        itemCount: 5,
                                                        minRating: 1,
                                                        maxRating: 5,
                                                        itemBuilder:
                                                            (context, _) =>
                                                                const Icon(
                                                                  Icons.star,
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          70,
                                                                          208,
                                                                          217,
                                                                          1),
                                                                ),
                                                        onRatingUpdate:
                                                            (value) {
                                                          setState(() {
                                                            starRatingValue =
                                                                value;
                                                            numberOfOpinions++;
                                                          });
                                                        }),
                                                  ],
                                                ),
                                                const SizedBox(width: 5.0),
                                                Text(
                                                  "Opinions: $numberOfOpinions",
                                                ),
                                                const SizedBox(width: 33.0),
                                                const Icon(Icons.bed),
                                                const Text("2"),
                                                const Icon(Icons.bathroom),
                                                const Text("1"),
                                                const Icon(Icons.kitchen),
                                                const Text("1"),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 250,
                                top: 230,
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2.0,
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0))),
                                  child: const Icon(
                                    Icons.heart_broken_sharp,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 30,
                                left: 30,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10.0,
                                      bottom: 0,
                                      top: 0),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(40.0))),
                                  child: Row(
                                    children: <Widget>[
                                      const Icon(Icons.location_pin,
                                          color:
                                              Color.fromRGBO(217, 233, 244, 1)),
                                      Text(
                                        "Los Angeles, CA",
                                        style: appTheme.textTheme.displayMedium!
                                            .copyWith(fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
