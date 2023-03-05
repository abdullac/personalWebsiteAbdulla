import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/core/transparent_screen/functions/dimonsions.dart';
import 'package:personalwebsite/core/transparent_screen/variables/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RunButton extends StatelessWidget {
  const RunButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      child: ResponsiveBuilder(builder: (context, sizeInfo) {
        Screen(sizingInfo: sizeInfo);
        return SizedBox(
          width: buttonSize(),
          height: buttonSize(0.5),
          child: ElevatedButton.icon(
            onPressed: () {
              //
            },
            icon: Icon(
              Icons.play_arrow,
              color: green600,
              size: buttonSize(0.5),
            ),
            label: const Text(""),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.only(left: 5, right: 0)),
              backgroundColor: MaterialStateProperty.all(blueGrey300_09),
              overlayColor: MaterialStateProperty.all(blueGrey05),
              shadowColor: MaterialStateProperty.all(grey900_100),
              elevation: MaterialStateProperty.all(1.5)
            ),
          ),
        );
      }),
    );
  }
}
