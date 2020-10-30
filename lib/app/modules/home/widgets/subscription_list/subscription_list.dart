import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/widgets/subscription_tile.dart';

class SubscriptionList extends StatelessWidget {
  final List<Subscription> subscriptions;
  final void Function(Subscription subscription) onTap;

  const SubscriptionList(
    this.subscriptions, {
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) => subscriptions.isEmpty ? empty : body;

  Widget get empty => Center(child: Text('No se encontraron talleres'));

  Widget get loading => Center(child: CircularProgressIndicator());

  Widget get body => Column(children: subscriptionList);

  List<Widget> get subscriptionList => subscriptions.map(toTile).toList();

  Widget toTile(Subscription subscription) =>
      SubscriptionTile(subscription, onTap: () => onTap(subscription));
}
