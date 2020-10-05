import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/config/colors.dart';
import 'package:habitat_ft_user/app/config/styles.dart';
import 'package:habitat_ft_user/app/models/workshop_model.dart';
import 'package:habitat_ft_user/app/widgets/background_tile.dart';

class WorkshopTile extends StatelessWidget {

  final Workshop workshop;

  const WorkshopTile({
    Key key, @required this.workshop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundTile(
      child: ListTile(
        title: Text(
          workshop.title,
          style: HStyles.TITULO_3_CELESTE,
        ),
        leading: ClipOval(
          child: Container(
            height: 40,
            width: 40,
            color: Colors.pink,
          ),
        ),
        trailing: Icon(
          Icons.play_circle_fill_rounded,
          color: HColors.CELESTE_HABITAT,
          size: 40,
        ),
        onTap: () {},
      ),
    );
  }
}
