// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_app/models/popular.dart';
import 'package:flutter_app/widgets/customdrawer.dart';
import 'package:flutter_app/widgets/iappbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, top: 10),
                  child: Badge(
                      position: BadgePosition.topEnd(top: 0, end: 0),
                      badgeColor: Colors.red,
                      showBadge: true,
                      badgeContent: const Text(
                        "3",
                        style: TextStyle(fontSize: 15),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart),
                      )),
                ),
              ],
              elevation: 0.0,
              actionsIconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black)),
          drawer: const CustomDrawer(),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 16, right: 10),
                color: Colors.white,
                width: double.maxFinite,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Fagbemi,",
                        style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text("What would you like to",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 1,
                    ),
                    Text("eat?",
                        style: GoogleFonts.roboto(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.white,
                          height: 50,
                          width: 100,
                          child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.search),
                                  suffixIcon: const Icon(Icons.mic),
                                  hintText: "Enter a dish name.",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(5)))),
                        )),
                        const SizedBox(
                          width: 3,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(218, 244, 82, 54),
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          width: 50,
                          child: const Icon(
                            Icons.notification_add,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              // **************
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(left: 16, right: 10),
                width: double.maxFinite,
                color: const Color.fromARGB(163, 243, 240, 240),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          labelPadding:
                              const EdgeInsets.only(left: 10, right: 10),
                          indicatorColor:
                              const Color.fromARGB(163, 243, 240, 240),
                          controller: _tabController,
                          indicator: BoxDecoration(
                              color: const Color.fromARGB(218, 244, 82, 54),
                              borderRadius: BorderRadius.circular(10)),
                          tabs: const [
                            Tab(
                              text: "Meal",
                            ),
                            Tab(
                              text: "Slide",
                            ),
                            Tab(
                              text: "Snacks",
                            ),
                            Tab(
                              text: "Drinks",
                            ),
                          ]),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Today's Special offer",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: TabBarView(
                            controller: _tabController,
                            children: [MealTab(), Slide(), Snacks(), Drinks()]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Popular Now",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "SEE FULL MENU >",
                              style: GoogleFonts.roboto(
                                  color: Colors.red,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ]),
                      const SizedBox(height: 5),
                      Container(
                        width: double.maxFinite,
                        height: 160,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  width: 10,
                                ),
                            itemCount: popular.length,
                            itemBuilder: (context, index) {
                              return Card(
                                  child: Container(
                                height: 160,
                                width: 130,
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      width: double.maxFinite,
                                      height: 10,
                                      padding: const EdgeInsets.only(left: 100),
                                      child: IconButton(
                                          onPressed: () {
                                            print("wel");
                                          },
                                          icon: const Icon(
                                            Icons.favorite_border,
                                            size: 20,
                                          ),
                                          color: Colors.red),
                                    ),
                                    CircleAvatar(
                                      radius: 48,
                                      backgroundImage:
                                          AssetImage(popular[index].imageurl),
                                    ),
                                    Text(
                                      popular[index].name,
                                      style: GoogleFonts.lato(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      popular[index].price,
                                      style: GoogleFonts.lato(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ));
                            }),
                      )
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }

//Tab for meal tabview.
  Widget MealTab() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/burga.jpg")),
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: const Radius.circular(10))),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Yummies Special Burger",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Now",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "N 1,800",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "(10% off)",
                  style: GoogleFonts.lato(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.red)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text("Add to Cart",
                        style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ))
        ],
      ),
    );
  }

  //*************************** */

  Widget Slide() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/ofade rice.jpg")),
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: const Radius.circular(10))),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Yummies Special rice",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Now",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "N 1,800",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "(10% off)",
                  style: GoogleFonts.lato(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.red)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text("Add to Cart",
                        style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ))
        ],
      ),
    );
  }

//************************ */
  Widget Snacks() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hot dog.jpg")),
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: const Radius.circular(10))),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                FittedBox(
                  child: Text(
                    "Yummies Special Hot Dog",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "Now",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "N 1,000",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "(5% off)",
                  style: GoogleFonts.lato(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.red)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text("Add to Cart",
                        style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ))
        ],
      ),
    );
  }

//****************** */
  Widget Drinks() {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/energy.jpg")),
                color: Colors.black,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: const Radius.circular(10))),
          )),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  "Yummies Special Coca",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Now",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "N 800",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "(10% off)",
                  style: GoogleFonts.lato(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.red)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Text("Add to Cart",
                        style: GoogleFonts.lato(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
