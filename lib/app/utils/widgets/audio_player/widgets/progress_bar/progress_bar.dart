import 'package:flutter/material.dart';

import '../../audio_player_controller.dart';
import 'widgets/indicator.dart';
import 'widgets/part.dart';

class ProgressBar extends StatelessWidget {
  final AudioPlayerController controller;

  const ProgressBar(this.controller);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          completedPart,
          indicator,
          incompletePart,
        ],
      ),
    );
  }

  Widget get indicator => Indicator();

  //TODO Cambiar estos valores por la duracion del audio,
  Widget get completedPart => Part.completed(flex: 0);

  //TODO Cambiar estos valores por la duracion del audio,
  Widget get incompletePart => Part.incomplete(flex: 1);
}
