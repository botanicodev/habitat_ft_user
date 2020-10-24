import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/controllers/customer_text_field_controller.dart';

import '../../login_controller.dart';

class EmailTextFieldController extends CustomerTextFieldController {
  get loginController => Get.find<LoginController>();

  @override
  String get errorTextValue => loginController.emailErrorText();

  @override
  set errorTextValue(String value) => loginController.errorText = value;
}
