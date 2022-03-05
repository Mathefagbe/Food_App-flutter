import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/models/meals.dart';
import 'package:flutter_app/screen/details.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Our Menu",
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, top: 10),
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
                  icon: const Icon(Icons.shopping_cart, color: Colors.black),
                )),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.deepOrange,
          labelColor: Colors.deepOrange,
          controller: _tabController,
          tabs: [
            Tab(
              child: Text(
                "Meals",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Tab(
              child: Text(
                "slides",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Tab(
              child: Text(
                "ibile meals",
                style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
      body: TabBarView(
          controller: _tabController,
          children: [BuildMeal(), Buildslide(), BuildIbele()]),
    );
  }

// ignore: non_constant_identifier_names
  Widget BuildMeal() {
    return Container(
      margin: const EdgeInsets.all(20),
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.white60,
      child: GridView.builder(
        itemCount: meal.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        // ignore: non_constant_identifier_names
        itemBuilder: (Context, index) {
          return Card(
            elevation: 4,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 110,
                    width: double.maxFinite,
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 100, bottom: 10),
                          height: 8,
                          child: IconButton(
                              color: Colors.deepOrange,
                              onPressed: () {
                                print("cool");
                              },
                              icon: const Icon(
                                Icons.favorite_border,
                                size: 20,
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                Context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      Details(mealsItem: meal[index]),
                                ));
                          },
                          child: Container(
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(meal[index].imageUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          meal[index].Name,
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          meal[index].price,
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget Buildslide() {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.white,
      child: const Center(child: Text("Slides")),
    );
  }

  Widget BuildIbele() {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.white,
      child: const Center(child: Text("ibile meal")),
    );
  }
}
