// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
      // ignore: prefer_const_constructors
      leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
            size: 15,
          )),
      actions: [
        IconButton(
            onPressed: null,
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ))
      ],
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(150, 10))),
    );
  }
}
