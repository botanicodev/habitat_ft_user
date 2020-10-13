import 'package:habitat_ft_user/app/utils/enums.dart';

class Subscription {
  String workshopId;
  String title;
  Status status;

  Subscription({this.title});

  Subscription.fromJson(Map<String, dynamic> json) {
    workshopId = json['workshop_id'];
    title = json['title'];
    status = mapInttoStatus(json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['workshop_id'] = this.workshopId;
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }
}

Status mapInttoStatus(int value) {
  switch (value) {
    case 0:
      return Status.pending;
      break;
    case 1:
      return Status.completed;
      break;
    default:
      return Status.pending;
  }
}
