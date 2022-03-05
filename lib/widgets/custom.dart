import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final IconButton? iconButton;

  final double? width;
  final double? height;

  const CustomButton(
      {this.iconButton, required this.height, required this.width});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int count = 1;
  late int total;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 255, 82, 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: FittedBox(
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (count >= 2) {
                    total=count--;
                  } else {
                    count = 1;
                  }
                });
              },
              icon: const Icon(
                Icons.remove,
                size: 20,
              ),
            ),
            Text("$count"),
            IconButton(
                onPressed: () {
                  setState(() {
                    total=count++;
                  });
                },
                icon: const Icon(
                  Icons.add,
                  size: 20,
                )),
          ],
        ),
      ),
    );
  }
}
