import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SoraDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          'assets/images/bg3.png',
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'إسلامي',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ).add(EdgeInsets.only(bottom: 30)),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.7),
                Colors.white,
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Text(
                'فاتحة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Divider(
                color: Color.fromRGBO(183, 147, 95, 1),
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
