import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/home_view.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/modules/login/widgets/custom_text_field.dart';
import 'package:habitat_ft_user/app/utils/config/assets.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/utils/widgets/custom_button.dart';

class LoginView extends StatelessWidget {
  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.CELESTE_OSCURO,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
              height: 483,
              width: 340,
              decoration: BoxDecoration(
                color: CustomColor.GRIS_01,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(children: [
                Image.asset(CustomerAssets.LIGHT_BLUE_LOGO),
                const SizedBox(height: 20),
                Text('¡Bienvenido!', style: CustomerStyles.TITULO_1_CELESTE),
                const SizedBox(height: 15),
                Text('Inicio de sesión',
                    style: CustomerStyles.SUB_TITULO_2_GRIS_50),
                const SizedBox(height: 25),
                CustomTextField(
                  height: 70,
                  textStream: controller.email$,
                  errorText$: controller.errorTextEmail$,
                  wasItValidatedStream: controller.wasItValidated$,
                  hintText: 'Correo Electrónico',
                  suffixIconData: Icons.email,
                ),
                CustomTextField(
                  height: 70,
                  textStream: controller.password$,
                  errorText$: controller.errorTextPassword$,
                  wasItValidatedStream: controller.wasItValidated$,
                  hintText: 'Contraseña',
                  suffixIconData: Icons.lock,
                ),
                const SizedBox(height: 10),
                Obx(
                  () => controller.isLoading$.value
                      ? Center(child: CircularProgressIndicator())
                      : CustomButton(
                          text: 'Ingresar',
                          height: 42,
                          hasIcon: true,
                          backgroundColor: CustomColor.CELESTE_HABITAT,
                          onPressed: () async {
                            controller.wasItValidated$.value = true;

                            controller.errorTextEmail$.value = '';
                            controller.errorTextPassword$.value = '';

                            if (controller.email$.isEmpty) {
                              controller.errorTextEmail$.value =
                                  'El correo no puede estar vacío';
                            } else if (!controller.email$.value.isEmail) {
                              controller.errorTextEmail$.value =
                                  'Formato inválido de correo';
                            }

                            if (controller.password$.isEmpty) {
                              controller.errorTextPassword$.value =
                                  'La contraseña no puede estar vacía';
                            }

                            if (controller.email$.value.isNotEmpty &&
                                controller.email$.value.isEmail &&
                                controller.password$.value.isNotEmpty) {
                              controller.isLoading$.value = true;
                              controller.wasItValidated$.value = false;

                              var isLoginOK =
                                  await controller.signInWithEmailAndPassword(
                                      controller.email$.value,
                                      controller.password$.value);

                              controller.isLoading$.value = false;

                              if (isLoginOK) {
                                controller.email$.value = '';
                                controller.password$.value = '';
                                Get.off(() => HomeView());
                              } else {
                                showAlertErrorLogin(context);
                              }
                            }
                          },
                        ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void showAlertErrorLogin(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: EdgeInsets.zero,
        content: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          width: 330,
          // height: 110,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'El usuario y/o  la contraseña son incorrectos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColor.COMPLEMENTO_1,
                  fontSize: 17,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                height: 35,
                margin: EdgeInsets.symmetric(horizontal: 20),
                backgroundColor: CustomColor.CELESTE_OSCURO,
                text: 'Aceptar',
                fontSize: 15,
                onPressed: () => Get.back(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
