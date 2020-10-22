import 'package:habitat_ft_user/app/utils/enums.dart';

class Subscription {
  String workshopId;
  String title;
  SubscriptionStatus status;

  Subscription({this.title});

  Subscription.fromJson(Map<String, dynamic> json) {
    workshopId = json['workshop_id'];
    title = json['title'];
    status = mapInttoSubscriptionStatus(json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['workshop_id'] = this.workshopId;
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }
}

SubscriptionStatus mapInttoSubscriptionStatus(int value) {
  switch (value) {
    case 0:
      return SubscriptionStatus.pending;
      break;
    case 1:
      return SubscriptionStatus.completed;
      break;
    default:
      return SubscriptionStatus.pending;
  }
}
