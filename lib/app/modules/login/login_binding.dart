import 'package:get/get.dart';

import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/email_text_field/email_text_field_controller.dart';

import 'widgets/password_text_field/password_text_field_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => EmailTextFieldController());
    Get.lazyPut(() => PasswordTextFieldController());
  }
}
