import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    var copyRightPortions = [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Created by",
            style: TextStyle(color: Colors.black),
          ),
          TextButton(
            onPressed: () {
              //
            },
            child: const Text("Abdulla",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white70)),
          )
        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.copyright, color: Colors.black54),
          RichText(
            text: const TextSpan(
                text: "2023 ",
                style: TextStyle(color: Colors.white70),
                children: [
                  TextSpan(
                      text: "All rights reserved",
                      style: TextStyle(color: Colors.black))
                ]),
          ),
        ],
      ),
      // Text("Created by"),
      // Text("Abdulla"),
    ];
    return ResponsiveBuilder(
      builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Container(
          width: double.infinity,
          height: mainIsPortraitMobile() ? mainHeight(10) : mainHeight(5),
          color: Colors.red[600],
          child: mainIsPortraitMobile()
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: copyRightPortions,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: copyRightPortions,
                ),
        );
      },
    );
  }
}
