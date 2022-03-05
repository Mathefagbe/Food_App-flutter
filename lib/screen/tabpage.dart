import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home.dart';
import 'package:flutter_app/screen/livechat.dart';
import 'package:flutter_app/screen/menu.dart';
import 'package:flutter_app/screen/profile.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
   int _currentpage=2;

   void _changepage(index){
     setState(() {
       _currentpage=index;
     });
   }
   final List<Widget>_page= const [
     Livechat(),
     Menu(),
     Home(),
     Profile() 
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_page.elementAt(_currentpage),
      
      bottomNavigationBar: BottomNavigationBar(onTap:_changepage,
          currentIndex:_currentpage ,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.orange[700],
          items: const [
            BottomNavigationBarItem(
              label: "livechat",
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: "menu",
              icon: Icon(Icons.menu),
            ),
            BottomNavigationBarItem(
              label: "home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "person",
              icon: Icon(Icons.person),
            )
          ]),
    );
  }
}
