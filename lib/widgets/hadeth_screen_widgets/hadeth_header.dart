import 'package:flutter/material.dart';

class HadethHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        'الأحاديث',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
    );
  }
}
