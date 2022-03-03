import 'package:url_launcher/url_launcher.dart';

class Url {
  static Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
