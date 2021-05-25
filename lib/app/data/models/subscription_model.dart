import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habitat_ft_user/app/utils/enums.dart';

// TODO REFACTOR DE TODO
class Subscription {
  static const COLLECTION_NAME = 'subscriptions';
  String id;
  String title;
  SubscriptionStatus status;

  Subscription({this.id, this.title, this.status});

  void setComplete() => status = SubscriptionStatus.completed;
  void setPending() => status = SubscriptionStatus.pending;

  Subscription.fromQueryDocumentSnapshot(QueryDocumentSnapshot doc) {
    Map<String, dynamic> json = doc.data();
    id = doc.id;
    title = json['title'];
    status = Subscription.intToSubscriptionStatus(json['status']);
  }

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    status = Subscription.intToSubscriptionStatus(json['status']);
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['title'] = this.title;
    data['status'] = this.status.index;
    return data;
  }

  Subscription.fromQuery(QueryDocumentSnapshot doc) {
    Map<String, dynamic> map = doc.data();
    id = doc.id;
    title = map['title'];
    status = intToSubscriptionStatus(map['status']);
  }

  static Subscription byQueryDocumentSnapshot(QueryDocumentSnapshot doc) =>
      Subscription.fromQueryDocumentSnapshot(doc);

  static Subscription byJson(Map<String, dynamic> json) =>
      Subscription.fromJson(json);

  static SubscriptionStatus intToSubscriptionStatus(int value) {
    switch (value) {
      case 0:
        return SubscriptionStatus.pending;
      case 1:
        return SubscriptionStatus.completed;
      default:
        print('No se encontro un indice para mapear un Status');
        return SubscriptionStatus.pending;
    }
  }

  @override
  String toString() => 'id: $id, title: $title, status: $status';
}

abstract class SubscriptionList {
  static List<Subscription> byQuerySnapshot(QuerySnapshot querySnapshot) =>
      querySnapshot.docs.map(Subscription.byQueryDocumentSnapshot).toList();
}
