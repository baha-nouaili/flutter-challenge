import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//Importing the firestore packages to retrieve the data

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  //Creating an instance of our firestore database
  final Stream<QuerySnapshot> cars =
      FirebaseFirestore.instance.collection('cars').snapshots();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: SizedBox(
          height: 150,
          //Listening to exposed streams and return widgets
          child: StreamBuilder<QuerySnapshot>(
            stream: cars,
            //Converting streams into widgets
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //displaying the error
              if (snapshot.hasError) {
                return const Text('An error occurs please try again');
              }
              //displaying the loading state
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text('is loading...');
              }
              //storing the data coming from the database
              final data = snapshot.requireData;

              return ListView.builder(
                //using a listview.builder to retrieve only the data that the user see
                scrollDirection: Axis.horizontal,
                itemCount: data.size,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: SizedBox(
                      height: 140,
                      width: 140,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.network(
                              data.docs[index]['imageUrl'],
                              width: 140,
                              height: 140,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Text(
                                '${data.docs[index]['categorie']}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}
