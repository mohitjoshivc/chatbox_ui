import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  final String assetName;
  const SocialMediaButton({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFFA8B0AF),
          width: 2.0,
        ),
      ),
      child: SvgPicture.asset('assets/images/svg/social/$assetName'),
    );
  }
}
