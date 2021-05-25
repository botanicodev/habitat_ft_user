import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/competitor.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();

  final RxString email$ = 'user@user.com'.obs;
  final RxString password$ = '12'.obs;
  final RxString errorTextEmail$ = ''.obs;
  final RxString errorTextPassword$ = ''.obs;
  final RxBool isLoading$ = false.obs;
  final RxBool wasItValidated$ = false.obs;

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    try {
      Competitor profile =
          await _authRepository.signInWithEmailAndPassword(email, password);

      return profile != null;
    } catch (e) {
      print(e);
      return false;
    }
  }

  // final _emailController = Get.find<EmailTextFieldController>();
  // final _passwordController = Get.find<PasswordTextFieldController>();

  // RxString _errorText = ''.obs;
  // RxBool _isLoading = false.obs;

  // String get email => _emailController.text;
  // String get password => _passwordController.text;
  // String get errorText => _errorText.value;
  // String get emailErrorText => errorTextIsEmpty ? null : '';
  // String get passwordErrorText => errorTextIsEmpty ? null : errorText;

  // bool get errorTextIsEmpty => errorText == '';
  // bool get isLoading => _isLoading.value;

  // set errorText(String value) => _errorText.value = value;
  // set isLoading(bool to) => _isLoading.value = to;

  // void login() async {
  //   try {
  //     turnOnLoading();
  //     await signIn();
  //   } catch (e) {
  //     errorText = (e == null)
  //         ? errorText = 'Se rompio algo, trata de entrar en un rato'
  //         : errorText = e.message;
  //   } finally {
  //     turnOffLoading();
  //   }
  // }

  // Future<void> signIn() async {
  //   Competitor competitor =
  //       await AuthRepository().signInWithEmailAndPassword(email, password);
  //   if (competitor != null) {
  //     Get.offAllNamed(Routes.HOME);
  //   } else {
  //     print("ERRRROOOORRRR");
  //   }
  // }

  // // Future<void> signIn() async =>
  // //     await _authRepo.signInWithEmailAndPassword(email, password);

  // void turnOnLoading() => isLoading = true;
  // void turnOffLoading() => isLoading = false;
}
