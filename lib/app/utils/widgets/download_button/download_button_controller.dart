import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/helper.dart';
import 'package:habitat_ft_user/app/utils/snackbar.dart';

class DownloadButtonController extends GetxController {
  String url;

  void init(String url) => this.url = url;

  void download() {
    try {
      Helper.launchURL(url);
    } catch (e) {
      CustomerSnackbar.error(
          message: 'En este momento no se puede descargar el archivo :(');
    }
  }
}
