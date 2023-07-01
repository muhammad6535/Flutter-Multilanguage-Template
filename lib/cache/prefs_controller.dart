import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsController extends GetxController {
  late SharedPreferences pref;

  static PrefsController? _instance;

  factory PrefsController() {
    _instance ??= PrefsController._internal();
    return _instance!;
  }

  PrefsController._internal();

  Future<void> initialize() async {
    pref = await SharedPreferences.getInstance();
  }
}
