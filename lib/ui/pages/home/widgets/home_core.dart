import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCore extends StatelessWidget {
  const HomeCore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 640,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Core Topics",
              style: GoogleFonts.ibmPlexSans(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              bottom: 12,
            ),
            child: Text(
              "Discover the path that’s right for you with key technologies, tools and processes for you to sharpen your competitive edge.",
              style: GoogleFonts.ibmPlexSans(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
            ),
          ),
          _buildItem(
              "AI Learning",
              "https://www.ibm.com/skills/topics/artificial-intelligence/",
              Colors.blue),
          _buildItem("Analytics",
              "https://www.ibm.com/skills/topics/analytics/", Colors.blue),
          _buildItem("Blockchain",
              "https://www.ibm.com/skills/topics/blockchain/", Colors.blue),
          _buildItem(
              "Cloud", "https://www.ibm.com/skills/topics/cloud/", Colors.blue),
          _buildItem(
              "Internet of Things",
              "https://www.ibm.com/skills/topics/internet-of-things/",
              Colors.blue),
          _buildItem("Quantum", "https://www.ibm.com/skills/topics/quantum/",
              Colors.blue),
          _buildItem("Cybersecurity",
              "https://www.ibm.com/skills/topics/cybersecurity", Colors.blue),
          _buildItem(
              "Enterprise Computing",
              "https://www.ibm.com/skills/topics/enterprise-computing/",
              Colors.blue),
          _buildItem(
              "Enterprise Design Thinking",
              "https://www.ibm.com/skills/topics/enterprise-design-thinking/",
              Colors.blue),
        ],
      ),
    );
  }
}

Widget _buildItem(title, color, link, {Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 8),
    child: Container(
      height: 50,
      width: double.infinity,
      color: Color(0xffF2F4F8),
      child: GestureDetector(
        onTap: () {
          FlutterWebBrowser.openWebPage(
            url: link,
            customTabsOptions: const CustomTabsOptions(
              colorScheme: CustomTabsColorScheme.dark,
              shareState: CustomTabsShareState.on,
              instantAppsEnabled: true,
              showTitle: true,
              urlBarHidingEnabled: true,
            ),
            safariVCOptions: const SafariViewControllerOptions(
              barCollapsingEnabled: true,
              preferredBarTintColor: Colors.green,
              preferredControlTintColor: Colors.amber,
              dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
              modalPresentationCapturesStatusBarAppearance: true,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(
            top: 14.0,
            left: 8,
          ),
          child: Text(
            title,
            style: GoogleFonts.ibmPlexSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
