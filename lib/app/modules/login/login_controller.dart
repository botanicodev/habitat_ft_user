import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/email_text_field/email_text_field_controller.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/password_text_field/password_text_field_controller.dart';

// TODO REFATOR
class LoginController extends GetxController {
  RxString _errorText = ''.obs;
  RxBool _isLoading = false.obs;

  get email => Get.find<EmailTextFieldController>().text;
  get password => Get.find<PasswordTextFieldController>().text;

  get _authRepo => Get.find<AuthRepository>();
  get errorText => _errorText.value;
  set errorText(String value) => _errorText.value = value;
  bool get isLoading => _isLoading.value;

  void login() async {
    try {
      startLoading();
      await _authRepo.signInWithEmailAndPassword(email, password);
    } catch (e) {
      catchLoginError(e);
    } finally {
      endLoading();
    }
  }

  void startLoading() => _isLoading.value = true;
  void endLoading() => _isLoading.value = false;

  void onChange() {
    if (errorText != '') _errorText.value = '';
  }

  String emailErrorText() => errorText == '' ? null : '';

  String passwordErrorText() => errorText == '' ? null : errorText;

  void catchLoginError(dynamic e) {
    if (e == null) {
      _errorText.value = 'Se rompio algo, trata de entrar en un rato';
    } else {
      _errorText.value = e.message;
    }
  }
}
