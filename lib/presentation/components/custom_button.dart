import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressFunction;
  final SvgPicture? svgPicture;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressFunction,
    required this.backgroundColor,
    required this.textColor,
    this.svgPicture,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .06,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
                color: Theme.of(context)
                    .canvasColor), // Set the color of the border
          ),
          backgroundColor: MaterialStateProperty.all<Color?>(backgroundColor),
        ),
        onPressed: onPressFunction,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (svgPicture != null) svgPicture!,
            Gap(10),
            Text(
              text,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
