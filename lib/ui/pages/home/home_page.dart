import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studez/ui/pages/data/home_data.dart';
import 'package:studez/ui/pages/home/widgets/home_core.dart';
import 'package:studez/ui/pages/home/widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F8),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Featured Spotlight",
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
                "Learn more about how our expertise is creating change locally and globally.",
                style: GoogleFonts.ibmPlexSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
            ),
            Container(
              height: 310,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeData.length,
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 310,
                        width: 300,
                        color: Colors.white,
                        child: InkWell(
                          onTap: () => FlutterWebBrowser.openWebPage(
                            url: homeData[i].link!,
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
                              modalPresentationCapturesStatusBarAppearance:
                                  true,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            homeData[i].image!,
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(homeData[i].label!,
                                    style: GoogleFonts.ibmPlexSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Container(
                                  height: 40,
                                  width: double.infinity,
                                  child: Row(
                                    children: [
                                      Spacer(),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.link,
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            HomeCore(),
          ],
        ),
      ),
    );
  }
}
