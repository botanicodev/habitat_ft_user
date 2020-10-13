import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

class Subscription {
  String workshopId;
  String title;
  Status status;

  Subscription({this.title, this.status, this.workshopId});

  Subscription.fromJson(Map<String, dynamic> json) {
    workshopId = json['workshop_id'];
    title = json['title'];
    status = Mapper.intToStatus(json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['workshop_id'] = this.workshopId;
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }
}
