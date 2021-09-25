import 'package:flutter/material.dart';
import 'package:flutter_challenge/my_icons_icons.dart';

//Implementing the App Bar of the application and fixing a height for it
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Cars'),
      centerTitle: true,
      elevation: 0,
      leading: const IconButton(
          onPressed: null,
          icon: Icon(
            MyIcons.left_arrow,
            color: Colors.white,
            size: 12,
          )),
      actions: const [
        IconButton(
            onPressed: null,
            icon: Icon(
              MyIcons.shopping_cart,
              color: Colors.white,
            )),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(150, 10))),
    );
  }
}
