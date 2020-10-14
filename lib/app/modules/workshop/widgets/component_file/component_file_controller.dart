import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/component_model.dart';

class ComponentFileController extends GetxController {
  Rx<Component> _component = Rx<Component>();

  get component => this._component.value;

  void init({Component component}) {
    _component.value = component;
  }
}
