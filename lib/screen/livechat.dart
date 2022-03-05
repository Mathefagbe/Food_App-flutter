import 'package:flutter/material.dart';

class Livechat extends StatefulWidget {
  const Livechat({ Key? key }) : super(key: key);

  @override
  State<Livechat> createState() => _LivechatState();
}

class _LivechatState extends State<Livechat> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text("welcome to live chat")),
      
    );
  }
}