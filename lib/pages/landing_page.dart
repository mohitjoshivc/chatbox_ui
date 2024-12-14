import 'package:chatbox_ui/widgets/social_media_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;
        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0.0, -0.75),
                  radius: 0.6,
                  colors: [
                    Color(0xFF43116A),
                    Color(0xFF0A1832),
                  ],
                  stops: [0.35, double.infinity],
                  tileMode: TileMode.clamp,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.045),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/logo_small_white.svg',
                            width: 19,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Chatbox",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: screenWidth > 350 ? 350 : double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: FittedBox(
                          child: RichText(
                            text: TextSpan(
                                text: "Connect\nfriends\n",
                                style: TextStyle(
                                  letterSpacing: 0,
                                  fontFamily: 'Caros',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 400,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'easily &\nQuickly',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Our chat app is the perfect way to stay connected with friends and family.",
                      style: TextStyle(
                        fontFamily: 'Circular',
                        color: Color(0xFFB9C1BE),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(assetName: 'google_logo.svg'),
                        SizedBox(width: 30),
                        SocialMediaButton(assetName: 'facebook_logo.svg'),
                        SizedBox(width: 30),
                        SocialMediaButton(assetName: 'apple_logo.svg'),
                        SizedBox(width: 30),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Spacer(
                      flex: 2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFCDD1D0),
                          ),
                        ),
                        SizedBox(width: 14),
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Color(0xFFD6E4E0),
                            fontFamily: 'Circular',
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 14),
                        Expanded(
                          child: Divider(
                            color: Color(0xFFCDD1D0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 2,
                          minimumSize: Size.fromHeight(48),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Sign up with mail",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                            text: "Existing account? ",
                            style: TextStyle(
                              fontFamily: 'Circular',
                              color: Color(0xFFB9C1BE),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                text: "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Spacer(flex: 1),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
