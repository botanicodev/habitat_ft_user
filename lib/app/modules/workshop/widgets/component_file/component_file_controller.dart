import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';
import 'package:habitat_ft_user/app/utils/customer_snackbar.dart';
import 'package:habitat_ft_user/app/utils/helper.dart';

class ComponentFileController extends GetxController {
  Rx<Component> _component = Rx<Component>();

  get component => this._component.value;

  void init({Component component}) {
    _component.value = component;
  }

  void download() {
    try {
      Helper.launchURL(component.url);
    } catch (e) {
      CustomerSnackbar.error(
        message: 'En este momento no se puede descargar el archivo :(',
      );
    }
  }
}
