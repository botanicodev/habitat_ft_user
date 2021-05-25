import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/competitor.dart';
import 'package:habitat_ft_user/app/data/repositories/auth_repository.dart';

class LoginController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();

  final RxString email$ = ''.obs;
  final RxString password$ = ''.obs;
  final RxString errorTextEmail$ = ''.obs;
  final RxString errorTextPassword$ = ''.obs;
  final RxBool isLoading$ = false.obs;
  final RxBool wasItValidated$ = false.obs;

  Future<Competitor> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      Competitor profile =
          await _authRepository.signInWithEmailAndPassword(email, password);

      return profile;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
