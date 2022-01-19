import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
    required this.imageName,
    required this.pressIconCamera,
  }) : super(key: key);

  final String imageName;
  final VoidCallback pressIconCamera;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imageName),
          ),
          Positioned(
            bottom: 0,
            right: -12,
            child: GestureDetector(
              onTap: pressIconCamera,
              child: Container(
                padding: EdgeInsets.all(10),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF5F6F9),
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
