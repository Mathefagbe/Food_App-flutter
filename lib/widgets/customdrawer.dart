import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 200,
          width: double.maxFinite,
          color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 250),
                child: GestureDetector(
                  onTap: () {
                    return Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/ayomide.jpg"),
              ),
              Text(
                "Fagbemi Ayomide",
                style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Text(
                "Fagbemi65@gmail.com",
                style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.person),
          title: Text("profile"),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.shopping_cart),
          title: Text("My Orders"),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.privacy_tip),
          title: Text("Privacy Policy"),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.settings),
          title: Text("Settings"),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.help),
          title: Text("Help"),
        ),
        const ListTile(
          iconColor: Colors.white,
          textColor: Colors.white,
          leading: Icon(Icons.logout),
          title: Text("Sign Out"),
        )
      ]),
      backgroundColor: Colors.red,
    );
  }
}
