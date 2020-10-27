import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

class Subscription {
  static const COLLECTION_NAME = 'subscriptions';
  String id;
  String title;
  SubscriptionStatus status;

  Subscription({this.title, this.status, this.id});

  Subscription.queryDocumentSnapshot(QueryDocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data();
    id = doc.id;
    title = json['title'];
    status = Mapper.intToSubscriptionStatus(json['status']);
  }

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    status = Mapper.intToSubscriptionStatus(json['status']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }

  static Subscription onQueryDocumentSnapshot(QueryDocumentSnapshot doc) =>
      Subscription.queryDocumentSnapshot(doc);
}
