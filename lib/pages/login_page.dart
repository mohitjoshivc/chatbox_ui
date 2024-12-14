import 'package:chatbox_ui/widgets/input_field.dart';
import 'package:chatbox_ui/widgets/social_media_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight, // Ensure full screen height
            ),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Log in to Chatbox",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Welcome back! Sign in using your social account or email to continue us",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Circular',
                              color: Color(0xFFB9C1BE),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialMediaButton(assetName: 'google_logo.svg'),
                            SizedBox(width: 30),
                            SocialMediaButton(assetName: 'facebook_logo.svg'),
                            SizedBox(width: 30),
                            SocialMediaButton(assetName: 'apple_logo_dark.svg'),
                            SizedBox(width: 30),
                          ],
                        ),
                        SizedBox(height: 30),
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
                                color: Color(0xFF797C7B),
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
                        SizedBox(height: 30),
                        InputField(
                          label: "Your Email",
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 30),
                        InputField(
                          label: "Password",
                          obscureText: true,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(48),
                            backgroundColor: Color(0xFF24786D),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Log In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(48),
                            backgroundColor: Color(0xFFF3F6F6),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                            style: TextStyle(color: Color(0xFF24786D)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
