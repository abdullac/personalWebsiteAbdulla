import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/footer_page/core/footer_consteents.dart';
import 'package:personalwebsite/section/page_main/core/Widget/slider_menu_list.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> copyRightPortions() => [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                footerTitle1,
                style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(color: kBlack915),
                  fontSize: mainShortSize(2.5),
                ),
              ),
              TextButton(
                onPressed: () {
                  toHomePage();
                },
                child: Text(footerTitle2,
                    style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kGrey,
                      fontSize: mainShortSize(2.5),
                    ))),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.copyright,
                color: kBlack26,
                size: mainShortSize(4),
              ),
              RichText(
                text: TextSpan(
                  text: footerTitle3,
                  style: GoogleFonts.varelaRound(
                      textStyle: TextStyle(
                    color: kGrey,
                    fontSize: mainShortSize(2.5),
                  )),
                  children: [
                    TextSpan(
                      text: footerTitle4,
                      style: GoogleFonts.varelaRound(
                        textStyle:  TextStyle(
                          color: kBlack915,
                        ),
                      ),
                    )
                  ],
                ),
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
          color: kRedAccent,
          child: mainIsPortraitMobile()
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: copyRightPortions(),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: copyRightPortions(),
                ),
        );
      },
    );
  }
}
