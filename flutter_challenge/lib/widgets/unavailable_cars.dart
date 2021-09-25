import 'package:flutter/material.dart';

class UnavailableCars extends StatefulWidget {
  const UnavailableCars({Key? key}) : super(key: key);

  @override
  _UnavailableCarsState createState() => _UnavailableCarsState();
}

class _UnavailableCarsState extends State<UnavailableCars> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Image.network(
                  'https://images.unsplash.com/photo-1603386329225-868f9b1ee6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topLeft,
                  height: 95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fiat Panda',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.ac_unit_outlined,
                                  size: 12,
                                ),
                                Text(
                                  'Aria Condizionata',
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough),
                                )
                              ],
                            ),
                            Row(children: const [
                              Icon(Icons.account_box_sharp, size: 12),
                              Text(
                                'Manuale',
                                style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              )
                            ])
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.dock_rounded,
                                size: 12,
                              ),
                              Text(
                                '4 porte',
                                style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(children: const [
                            Icon(
                              Icons.account_box_sharp,
                              size: 12,
                            ),
                            Text(
                              '5 posti',
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough),
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
                            'Km illiminati',
                            style: TextStyle(
                                color: Colors.green[200],
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const Text(
                            '171,90 €',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Image.network(
                  'https://images.unsplash.com/photo-1603386329225-868f9b1ee6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topLeft,
                  height: 95,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fiat Panda',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            decoration: TextDecoration.lineThrough),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.ac_unit_outlined,
                                  size: 12,
                                ),
                                Text(
                                  'Aria Condizionata',
                                  style: TextStyle(
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough),
                                )
                              ],
                            ),
                            Row(children: const [
                              Icon(Icons.account_box_sharp, size: 12),
                              Text(
                                'Manuale',
                                style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              )
                            ])
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.dock_rounded,
                                size: 12,
                              ),
                              Text(
                                '4 porte',
                                style: TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.lineThrough),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(children: const [
                            Icon(
                              Icons.account_box_sharp,
                              size: 12,
                            ),
                            Text(
                              '5 posti',
                              style: TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough),
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
                            'Km illiminati',
                            style: TextStyle(
                                color: Colors.green[200],
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                          const Text(
                            '171,90 €',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ],
    );
  }
}
