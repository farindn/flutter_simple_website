import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget NavItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: const Color(0XFF1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: index == selectedIndex
                    ? const Color(0XFFFE998D)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 35,
              ),
              child: Column(
                children: [
                  /*
                   ! NOTE: NAVIGATION 
                  */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 72,
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NavItem(
                            title: "Gudies",
                            index: 0,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          NavItem(
                            title: "Pricing",
                            index: 1,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          NavItem(
                            title: "Teams",
                            index: 2,
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          NavItem(
                            title: "Stories",
                            index: 3,
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/btn.png',
                        width: 163,
                        height: 53,
                      ),
                    ],
                  ),
                  /*
                   ! NOTE: ILUSTRATION 
                  */
                  const SizedBox(
                    height: 76,
                  ),
                  Image.asset(
                    'assets/images/ilustration.png',
                    height: 550,
                  ),
                  /*
                   ! NOTE: FOOTER 
                  */
                  const SizedBox(
                    height: 84,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/icon_down_solid.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        "Scroll to Learn More",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF000000),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
