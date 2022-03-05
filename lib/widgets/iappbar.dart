import "package:flutter/material.dart";

class IAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;
  final Color color;

  const IAppBar({required this.child, this.height = 56,required this.color});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: height,
      color: color,
    );
  }
}
