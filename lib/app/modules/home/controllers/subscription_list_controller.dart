import 'package:get/get.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/data/repositories/subscription_repository.dart';
import 'package:habitat_ft_user/app/modules/login/login_controller.dart';
import 'package:habitat_ft_user/app/routes/app_pages.dart';

class SubscriptionListController extends GetxController {
  final SubscriptionRepository _repository = Get.find();

  RxList<Subscription> _subscriptions = <Subscription>[].obs;

  List<Subscription> get subscriptions => _subscriptions;
  get uid => Get.find<LoginController>().user.uid;

  void fetchByPendingStatus() {
    _subscriptions.bindStream(_repository.pending.stream);
    _repository.fetchPending(uid);
  }

  void fetchByCompletedStatus() {
    _subscriptions.bindStream(_repository.completed.stream);
    _repository.fetchCompleted(uid);
  }

  void onTap(Subscription subscription) =>
      Get.toNamed(Routes.WORKSHOP, arguments: {"workshopId": subscription.id});
}
