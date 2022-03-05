import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/models/meals.dart';
import 'package:flutter_app/models/recommended.dart';
import 'package:flutter_app/screen/menu.dart';
import 'package:flutter_app/widgets/custom.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final MealsItem mealsItem;
  const Details({required this.mealsItem});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int count = 1;
  int star = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 70, right: 70),
                color: Colors.black12,
                height: 200,
                width: double.maxFinite,
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      image: DecorationImage(
                          image: AssetImage(widget.mealsItem.imageUrl))),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        widget.mealsItem.Name,
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      spacing: -30,
                      children: List.generate(5, (index) {
                        return IconButton(
                          color: Colors.orange,
                          onPressed: () {},
                          icon: star > index
                              ? const Icon(Icons.star)
                              : const Icon(Icons.star_border),
                          iconSize: 15,
                        );
                      }),
                    ),
                    Text("(59 rating)",
                        style: GoogleFonts.lato(
                            fontSize: 10, fontWeight: FontWeight.w300))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.mealsItem.price,
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const CustomButton(height: 27, width: 70)
                      ]),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Text("Description",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                height: 85,
                padding: const EdgeInsets.only(left: 10),
                child: Text(widget.mealsItem.description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300)),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended slides",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 120,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return Container(
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Container(
                              height: 60,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          Recommend[index].imageurl))),
                            ),
                            Expanded(
                              child: Container(
                                width: double.maxFinite,
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(Recommend[index].name),
                                    Text(Recommend[index].price)
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                      );
                    }),
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 25,
                        height: 120,
                      );
                    },
                    itemCount: Recommend.length),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rating & Review",
                      style:
                          GoogleFonts.lato(color: Colors.black, fontSize: 20),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Text("See all",
                            style: GoogleFonts.lato(color: Colors.red)))
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 58,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total" + " " + widget.mealsItem.price,
                style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 82, 2))),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text("Add To Cart"))
            ],
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        ))
      ]),
    );
  }
}
