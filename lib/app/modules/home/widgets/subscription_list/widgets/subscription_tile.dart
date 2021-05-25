import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/custom_color.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/data/models/subscription_model.dart';
import 'package:habitat_ft_user/app/utils/widgets/customer_list_tile.dart';

class SubscriptionTile extends StatelessWidget {
  final Subscription subscription;
  final void Function() onTap;
  final Widget trailing, leading;

  const SubscriptionTile(
    this.subscription, {
    @required this.onTap,
    this.trailing = const Icon(
      Icons.play_circle_fill_rounded,
      color: CustomColor.CELESTE_HABITAT,
      size: 40,
    ),
    this.leading = const CircleAvatar(
      radius: 40,
      backgroundColor: Colors.pink,
    ),
  });

  TextStyle get stlye => CustomerStyles.TITULO_3_CELESTE;

  @override
  Widget build(BuildContext context) {
    return CustomerListTile(
      title: Text(subscription.title, style: stlye),
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
