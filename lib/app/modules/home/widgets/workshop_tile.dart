import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/modules/home/widgets/background_tile.dart';

class WorkshopTile extends StatelessWidget {
  final Workshop workshop;

  const WorkshopTile({
    Key key,
    @required this.workshop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundTile(
      child: ListTile(
        title: buildTitle(),
        leading: buildLeading(),
        trailing: buildTrailing(),
        onTap: () {},
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      workshop.title,
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
