import 'package:flutter/material.dart';
import 'package:islami_app/widgets/table_header.dart';

import 'sora_list_item.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/quran_logo.png',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  TableHeader(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: quranNames.length,
                      itemBuilder: (context, index) {
                        return SoraListItem(
                            ayatNumbers[index], quranNames[index]);
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
