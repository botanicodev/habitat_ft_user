import 'package:flutter/material.dart';

import 'widgets/components_page_view/components_page_view.dart';
import 'widgets/navigation_bar/navigation_bar.dart';

class WorkshopPlayer extends StatelessWidget {
  const WorkshopPlayer();

  @override
  Widget build(_) => Column(children: [
        const ComponentsPageView(),
        const NavigationBar(),
      ]);
}
