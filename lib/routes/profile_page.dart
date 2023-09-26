import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:internship_application_4/theme/application_theme.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double starRatingValue = 0;
  int numberOfOpinions = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepOrangeAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 25.0),
        padding: const EdgeInsets.all(20.0),
        color: const Color.fromRGBO(239, 242, 247, 1),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const CircleAvatar(
                    radius: 25.0,
                    child: Image(
                      image: AssetImage("assets/images/avatar.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 40.0),
                const Icon(Icons.location_pin),
                Text("Los Angeles, CA",
                    style: appTheme.textTheme.displayMedium!
                        .copyWith(fontSize: 14.0)),
                const SizedBox(width: 4.0),
                const Icon(Icons.arrow_downward),
                const SizedBox(width: 40.0),
                const Icon(Icons.notification_add),
                const SizedBox(width: 20.0),
                const Icon(Icons.settings),
              ],
            ),
            const SizedBox(height: 40.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello Eddie!",
                    style:
                        appTheme.textTheme.titleLarge!.copyWith(fontSize: 20.0),
                  ),
                  Text(
                    "Start looking for your house",
                    style: appTheme.textTheme.titleLarge!
                        .copyWith(fontSize: 20.0, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            SearchBar(
              elevation: MaterialStateProperty.all(0),
            ),
            SizedBox(
              height: 438,
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60.0)),
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
                                        style: appTheme.textTheme.titleLarge!
                                            .copyWith(fontSize: 24.0),
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              "Timmy Bremer",
                                              style: appTheme
                                                  .textTheme.displayMedium!
                                                  .copyWith(fontSize: 14.0),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "\$1500 USD",
                                          style: appTheme
                                              .textTheme.displayMedium!
                                              .copyWith(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w900),
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
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                      Icons.star,
                                                      color: Color.fromRGBO(
                                                          70, 208, 217, 1),
                                                    ),
                                                onRatingUpdate: (value) {
                                                  setState(() {
                                                    starRatingValue = value;
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
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
                              left: 10.0, right: 10.0, bottom: 0, top: 0),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.location_pin,
                                  color: Color.fromRGBO(217, 233, 244, 1)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60.0)),
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
                                        style: appTheme.textTheme.titleLarge!
                                            .copyWith(fontSize: 24.0),
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                              "Timmy Bremer",
                                              style: appTheme
                                                  .textTheme.displayMedium!
                                                  .copyWith(fontSize: 14.0),
                                            )
                                          ],
                                        ),
                                        Text(
                                          "\$1500 USD",
                                          style: appTheme
                                              .textTheme.displayMedium!
                                              .copyWith(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w900),
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
                                                itemBuilder: (context, _) =>
                                                    const Icon(
                                                      Icons.star,
                                                      color: Color.fromRGBO(
                                                          70, 208, 217, 1),
                                                    ),
                                                onRatingUpdate: (value) {
                                                  setState(() {
                                                    starRatingValue = value;
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
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
                              left: 10.0, right: 10.0, bottom: 0, top: 0),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                          child: Row(
                            children: <Widget>[
                              const Icon(Icons.location_pin,
                                  color: Color.fromRGBO(217, 233, 244, 1)),
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
    );
  }
}
