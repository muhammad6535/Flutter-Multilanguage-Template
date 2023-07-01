// ignore_for_file: prefer_if_null_operators

import 'package:project_template/cache/prefs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  PrefsController prefs = Get.put(PrefsController());
  String selectedLang = "";
  LocaleController() {
    getSelectedLang();
  }

  getSelectedLang() {
    selectedLang = prefs.pref.get('lang').toString();
  }

  void changeLang(String lang) {
    prefs.pref.setString('lang', lang);
    Get.updateLocale(Locale(lang));
  }
}
