import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                right: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'عدد الآيات',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
                bottom: BorderSide(
                  width: 3,
                  color: Color.fromRGBO(183, 147, 95, 1),
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              'إسم السورة',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
        ),
      ],
    );
  }
}
