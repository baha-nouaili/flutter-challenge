import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/my_icons_icons.dart';

class UnavailableCars extends StatefulWidget {
  const UnavailableCars({Key? key}) : super(key: key);

  @override
  _UnavailableCarsState createState() => _UnavailableCarsState();
}

class _UnavailableCarsState extends State<UnavailableCars> {
  final Stream<QuerySnapshot> unavailableCars =
      FirebaseFirestore.instance.collection('UnavailableCars').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: unavailableCars,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('Try again');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('is loading...');
          }

          final data = snapshot.requireData;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: data.size,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  //diving the widget into two parts which will be the image and the informations
                  Expanded(
                      //giving the picture  1/3 of the space in that widget
                      flex: 1,
                      child: Image.network(
                        data.docs[index]['imageUrl'],
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    //giving the informations 2/3 of the space in that widget
                    flex: 2,
                    child: Container(
                        alignment: Alignment.topLeft,
                        height: 95,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${data.docs[index]['name']}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      MyIcons.air_conditioner,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '${data.docs[index]['aria']}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Row(children: [
                                  const Icon(MyIcons.gearbox, size: 12),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${data.docs[index]['box']}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  )
                                ])
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      MyIcons.car_door,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '${data.docs[index]['door']}',
                                      style: const TextStyle(
                                          fontSize: 12,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(children: [
                                  const Icon(
                                    Icons.account_box_sharp,
                                    size: 12,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${data.docs[index]['post']}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ])
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '${data.docs[index]['km']}',
                                  style: TextStyle(
                                    color: Colors.green[200],
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Text(
                                  '${data.docs[index]['price']}',
                                  style: const TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  )
                ],
              );
            },
          );
        });
  }
}
