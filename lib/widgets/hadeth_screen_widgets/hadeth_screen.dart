import 'package:flutter/material.dart';
import 'package:islami_app/models/hadeth_data.dart';
import 'package:islami_app/screens/hadeth_details.dart';

import 'hadeth_header.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<String>? titles;

  void loadTitles() async {
    titles = await HadethData.getTitles();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (titles == null) {
      loadTitles();
    }
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              'assets/images/hadeth.png',
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                HadethHeader(),
                Expanded(
                  child: (titles == null)
                      ? CircularProgressIndicator.adaptive()
                      : ListView.builder(
                          itemCount: titles!.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(HadethDetails.routeName);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  titles![index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            );
                          },
                        ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
