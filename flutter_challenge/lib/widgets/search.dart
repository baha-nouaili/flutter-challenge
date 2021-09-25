import 'package:flutter/material.dart';

import './date_picker.dart';
import './unavailable_cars.dart';

//This is the search widget which will contain the other sub widgets
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButton(
              items: null,
              hint: const Text('Airport'),
              icon: const Icon(Icons.arrow_drop_down_outlined),
              isExpanded: true,
              underline: const SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Switch.adaptive(
                  value: isSwitched,
                  onChanged: (value) {
                    //Making the switch button reactive
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "Riconsegna l'auto in un altro luogo",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const DatePicker(),
          const Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            child: Text(
              'Unfortunately we run out of cars.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const UnavailableCars(),
        ],
      ),
    );
  }
}
