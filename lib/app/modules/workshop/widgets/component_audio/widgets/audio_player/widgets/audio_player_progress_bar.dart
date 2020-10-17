import 'package:flutter/material.dart';
import 'package:habitat_ft_user/app/utils/config/colors.dart';

import '../audio_player_controller.dart';

class AudioPlayerProgressBar extends StatelessWidget {
  final AudioPlayerController controller;

  const AudioPlayerProgressBar(this.controller);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            // PROBAR ACA CON EXPAnDEDS, moviendolo por los valores fix
            Container(
              height: 5,
              decoration: BoxDecoration(
                color: CustomerColors.GRIS_25,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            ClipOval(
              child: Container(
                height: 10,
                width: 10,
                color: CustomerColors.CELESTE_OSCURO,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
