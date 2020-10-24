import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/email_text_field/email_text_field_controller.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/password_text_field/password_text_field_controller.dart';

class LoginController extends GetxController {
  RxString _errorText = ''.obs;
  RxBool _isLoading = false.obs;

  AuthRepository get _authRepo => Get.find<AuthRepository>();

  EmailTextFieldController get _emailController =>
      Get.find<EmailTextFieldController>();
  PasswordTextFieldController get _passwordController =>
      Get.find<PasswordTextFieldController>();

  bool get errorTextIsEmpty => errorText == '';
  bool get isLoading => _isLoading.value;
  String get email => _emailController.text;
  String get password => _passwordController.text;
  String get errorText => _errorText.value;
  String get emailErrorText => errorTextIsEmpty ? null : '';
  String get passwordErrorText => errorTextIsEmpty ? null : errorText;

  set errorText(String value) => _errorText.value = value;
  set isLoading(bool to) => _isLoading.value = to;

  void turnOnLoading() => isLoading = true;
  void turnOffLoading() => isLoading = false;

  void login() async {
    try {
      turnOnLoading();
      await signIn();
    } catch (e) {
      catchLoginError(e);
    }
  }

  Future<void> signIn() async =>
      await _authRepo.signInWithEmailAndPassword(email, password);

  void catchLoginError(e) {
    turnOffLoading();
    if (e == null) {
      errorText = 'Se rompio algo, trata de entrar en un rato';
    } else {
      errorText = e.message;
    }
  }
}
