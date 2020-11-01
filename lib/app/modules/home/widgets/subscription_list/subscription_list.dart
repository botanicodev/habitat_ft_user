import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/subscription_list/widgets/subscription_tile.dart';

import 'widgets/workshops_loading.dart';
import 'widgets/workshops_not_found.dart';

class SubscriptionList extends StatelessWidget {
  final List<Subscription> subscriptions;
  final void Function(Subscription subscription) onTap;
  final EdgeInsetsGeometry padding;

  const SubscriptionList(
    this.subscriptions, {
    @required this.onTap,
    this.padding = const EdgeInsets.symmetric(vertical: 35),
  });

  get loading => WorkshopsLoading();

  List<Widget> get subscriptionListView => subscriptions.map(toTile).toList();

  Widget toTile(Subscription subscription) =>
      SubscriptionTile(subscription, onTap: () => onTap(subscription));

  @override
  Widget build(_) => Padding(
        padding: padding,
        child: subscriptions.isEmpty
            ? const WorkshopsNotFound()
            : Column(children: subscriptionListView),
      );
}
