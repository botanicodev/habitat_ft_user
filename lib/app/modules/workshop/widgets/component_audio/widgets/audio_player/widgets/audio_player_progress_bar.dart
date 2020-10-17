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
        child: Row(
          children: [
            progresBarSection(
              flex: 50, //Cambiar estos valores por la duracion del audio,
              color: CustomerColors.CELESTE_HABITAT,
            ),
            ClipOval(
              child: Container(
                height: 10,
                width: 10,
                color: CustomerColors.CELESTE_OSCURO,
              ),
            ),
            progresBarSection(
              flex: 200, //Cambiar estos valores por la duracion del audio,
              color: CustomerColors.GRIS_25,
            ),
          ],
        ),
      ),
    );
  }

  Expanded progresBarSection({
    int flex,
    Color color,
  }) {
    return Expanded(
      flex: flex,
      child: Container(
        height: 5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
