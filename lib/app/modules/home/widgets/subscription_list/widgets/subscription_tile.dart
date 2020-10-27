import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_list_tile.dart';

class SubscriptionTile extends GetView {
  final Subscription subscription;
  final void Function() onTap;
  final double leadingRadius;
  final Color leadingColor;
  final Widget trailing;

  const SubscriptionTile({
    @required this.subscription,
    @required this.onTap,
    this.leadingRadius = 40,
    this.leadingColor = Colors.pink,
    this.trailing = const Icon(
      Icons.play_circle_fill_rounded,
      color: CustomerColors.CELESTE_HABITAT,
      size: 40,
    ),
  });

  TextStyle get stlye => CustomerStyles.TITULO_3_CELESTE;

  @override
  Widget build(BuildContext context) {
    return CustomerListTile(
      title: Text(subscription.title, style: stlye),
      leading:
          CircleAvatar(radius: leadingRadius, backgroundColor: leadingColor),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
