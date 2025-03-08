import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedvalue = 'one'; //initial value of the dropdown
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 70,
              color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                isExpanded:
                    true, //to expand the dropdown so that it takes the full width
                value: selectedvalue, //value of the dropdown
                icon: Icon(Icons.arrow_drop_down), //to show the dropdown icon
                items: <String>['one', 'two', 'three', 'four'] //dropdown items
                    .map<DropdownMenuItem<String>>((String value) {
                  //mapping the items
                  return DropdownMenuItem<String>(
                      value: value, child: Text(selectedvalue));
                }).toList(), //converting the map to a list
                onChanged: (String? newValue) {
                  //on change of the dropdown value
                  setState(() {
                    selectedvalue =
                        newValue!; //explamation mark is used to remove the null safety
                  });
                },
              ),
            )
          ],
        ));
  }
}
