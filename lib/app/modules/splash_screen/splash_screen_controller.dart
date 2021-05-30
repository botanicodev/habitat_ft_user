import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenControler extends GetxController {
  Future<bool> isLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool('isLogin') == null ? false : prefs.getBool('isLogin');
  }
}
