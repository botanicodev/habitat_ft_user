import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';
import 'package:habitat_ft_user/app/utils/mapper.dart';

class Subscription {
  static const COLLECTION_NAME = 'subscriptions';
  String id;
  String title;
  SubscriptionStatus status;

  Subscription({this.id, this.title, this.status});

  void setComplete() => status = SubscriptionStatus.completed;
  void setPending() => status = SubscriptionStatus.pending;

  static Subscription byQueryDocumentSnapshot(QueryDocumentSnapshot doc) =>
      Subscription.fromQueryDocumentSnapshot(doc);

  static Subscription byJson(Map<String, dynamic> json) =>
      Subscription.fromJson(json);

  Subscription.fromQueryDocumentSnapshot(QueryDocumentSnapshot doc) {
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
    final data = Map<String, dynamic>();
    data['title'] = this.title;
    data['status'] = this.status.index;
    return data;
  }
}

abstract class SubscriptionList {
  static List<Subscription> byQuerySnapshot(QuerySnapshot querySnapshot) =>
      querySnapshot.docs.map(Subscription.byQueryDocumentSnapshot).toList();
}
