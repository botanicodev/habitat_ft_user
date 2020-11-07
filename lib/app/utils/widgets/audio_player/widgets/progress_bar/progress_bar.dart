import 'package:flutter/material.dart';

import '../../audio_player_controller.dart';
import 'widgets/indicator.dart';
import 'widgets/part.dart';

class ProgressBar extends StatelessWidget {
  final AudioPlayerController controller;

  const ProgressBar(this.controller);

  @override
  Widget build(_) => Expanded(
        child: Row(
          children: [
            //TODO Cambiar estos valores por la duracion del audio,
            Part.completed(flex: 0),
            Indicator(),
            //TODO Cambiar estos valores por la duracion del audio,
            Part.incomplete(flex: 1),
          ],
        ),
      );
}
