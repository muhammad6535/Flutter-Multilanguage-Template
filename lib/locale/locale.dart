import 'package:project_template/locale/arabic_dictionary.dart';
import 'package:project_template/locale/english_dictionary.dart';
import 'package:project_template/locale/hebrew_dictionary.dart';
import "package:get/get.dart";

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {"en": englishList, "ar": arabicList, "he": hebrewList};
}
