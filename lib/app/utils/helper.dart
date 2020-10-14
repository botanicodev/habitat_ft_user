import 'package:url_launcher/url_launcher.dart';

abstract class Helper {
  static void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static String durationToMinutesAndSeconds(Duration duration) {
    final list = duration.toString().split(':');
    final minutes = list[1];
    final seconds = list[2].split('.')[0];
    return '$minutes:$seconds';
  }
}
