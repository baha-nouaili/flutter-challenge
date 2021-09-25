import 'package:flutter/material.dart';

import './widgets/appbar.dart';
import './widgets/slider.dart';
import './widgets/search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 0, 25),
            child: Text(
              'Just Show Me:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const MySlider(),
          Divider(
            color: Colors.grey[200],
            height: 70,
            thickness: 20,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 15),
            child: Text(
              'Complete to search',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const Search()
        ],
      ),
    );
  }
}
