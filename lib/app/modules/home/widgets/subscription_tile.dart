import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habitat_ft_user/app/modules/home/controllers/subscription_list_controller.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';
import 'package:habitat_ft_user/app/utils/config/styles.dart';
import 'package:habitat_ft_user/app/modules/home/models/subscription_model.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/background_tile.dart';

class SubscriptionTile extends GetView<SubscriptionListController> {
  final Subscription subscription;

  const SubscriptionTile({
    Key key,
    @required this.subscription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundTile(
      child: ListTile(
        title: buildTitle(),
        leading: buildLeading(),
        trailing: buildTrailing(),
        onTap: () => controller.onTap(subscription),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      subscription.title,
      style: HStyles.TITULO_3_CELESTE,
    );
  }

  Widget buildLeading() {
    return ClipOval(
      child: Container(
        height: 40,
        width: 40,
        color: Colors.pink,
      ),
    );
  }

  Widget buildTrailing() {
    return Icon(
      Icons.play_circle_fill_rounded,
      color: HColors.CELESTE_HABITAT,
      size: 40,
    );
  }
}
