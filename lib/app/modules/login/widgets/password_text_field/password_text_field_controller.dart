import 'package:get/get.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_text_field/customer_text_field_controller.dart';

import '../../login_controller.dart';

class PasswordTextFieldController extends CustomerTextFieldController {
  LoginController get loginController => Get.find<LoginController>();

  @override
  String get errorTextValue => loginController.passwordErrorText;

  @override
  set errorTextValue(String value) => loginController.errorText = value;
}
