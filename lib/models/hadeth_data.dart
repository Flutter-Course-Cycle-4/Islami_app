import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:flutter/services.dart';

class HadethData {
  static Future<List<String>> getTitles() async {
    List<String> ahadeth;
    ahadeth = (await rootBundle.loadString('assets/ahadeth/ahadeth.txt'))
        .trim()
        .split('#');
    List<String> titles = [];
    for (int i = 0; i < ahadeth.length; i++) {
      if (ahadeth[i].length > 0)
        titles.add('الحديث رقم ${ArabicNumbers().convert(i + 1)}');
    }
    return titles;
  }
}
