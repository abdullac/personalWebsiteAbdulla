import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/footer_page/core/footer_consteents.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
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
            footerTitle1,
            style: TextStyle(color: Colors.black),
          ),
          TextButton(
            onPressed: () {
              toHomePage();
            },
            child: const Text(footerTitle2,
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
                text: footerTitle3,
                style: TextStyle(color: Colors.white70),
                children: [
                  TextSpan(
                      text: footerTitle4, style: TextStyle(color: Colors.black))
                ]),
          ),
        ],
      ),
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
