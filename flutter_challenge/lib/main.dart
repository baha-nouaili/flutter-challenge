import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

//I structured the app into 3 main widgets
import './widgets/appbar.dart';
import './widgets/slider.dart';
import './widgets/search.dart';

Future<void> main() async {
  //Initilazing the firebase services in my application
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //Creating a Home Page widget which will contain the sub widgets
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
        //Crossing all my other widget and their content to the left
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 0, 25),
            child: Text(
              'Just Show Me:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          //Creating a seperate widget which will contain the images slider
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
          //Creating a seperate widget which will contain te search sections
          const Search()
        ],
      ),
    );
  }
}
