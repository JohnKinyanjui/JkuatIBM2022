import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: NetworkImage(
            "https://images.prismic.io/ibm-skills/212559c7-884f-4026-9c9d-51f934d1cf52_ibm_skills_header_img.png"),
        fit: BoxFit.cover,
      )),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Supercharge your future",
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Let the world tech leader be your guide",
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      FlutterWebBrowser.openWebPage(
                        url: "https://www.ibm.com/skills/topics/",
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
                          dismissButtonStyle:
                              SafariViewControllerDismissButtonStyle.close,
                          modalPresentationCapturesStatusBarAppearance: true,
                        ),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 150,
                      color: Color(0xff0A5CF5),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Seize the opportunity",
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    color: Colors.green,
                    child: InkWell(
                      onTap: () async {
                        // final Uri _url = Uri.parse(
                        //     'https://chat.whatsapp.com/DVuNquGsNMR6ZmapCTaGwS');
                        // if (!await launchUrl(_url))
                        //   throw 'Could not launch $_url';

                        FlutterWebBrowser.openWebPage(
                          url:
                              "https://chat.whatsapp.com/DVuNquGsNMR6ZmapCTaGwS",
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
                            dismissButtonStyle:
                                SafariViewControllerDismissButtonStyle.close,
                            modalPresentationCapturesStatusBarAppearance: true,
                          ),
                        );
                      },
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Open Whatsapp",
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
