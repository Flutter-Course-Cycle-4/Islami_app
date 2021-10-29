import 'package:flutter/material.dart';

class SoraListItem extends StatelessWidget {
  final String ayatNumber, soraName;

  SoraListItem(this.ayatNumber, this.soraName);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              ayatNumber,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Text(
              soraName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
