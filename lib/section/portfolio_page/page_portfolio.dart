import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:personalwebsite/section/portfolio_page/dimonsions/portfolio_dimonsion.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Container(
        height: mainHeight(85),
        color: Colors.black,
        child: Column(
          children: [
            sectionHeading("My Works"),
            // portfolioHeading(),
            Flexible(
              flex: 17,
              child: SingleChildScrollView(
                child: Container(
                  height: mainLongSize(100)-mainHeight(15),
                  color: Colors.blueGrey[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      portfolioItemHeading(),
                      portfolioImagesArea(),
                      portfolioSubImagesArea(),
                      portfolioAdditionalImagesArea(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  // Flexible portfolioHeading() {
  //   return Flexible(
  //     flex: 3,
  //     child: Container(
  //       color: Colors.black,
  //       child: Center(
  //         child: Text(
  //           "My Works",
  //           style: mainHeadLineStyle(),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Flexible portfolioItemHeading() {
    return Flexible(
      flex: 1,
      child: Image.asset("assets/NetClipxTextImage.png"),
    );
  }

  Flexible portfolioImagesArea() {
    return Flexible(
      flex: 6,
      child: Container(
        color: Colors.black,
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Container(
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                horizontal: portfolioDimonsion(100 / 25),
                vertical: 10,
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 7,
                    child: Container(
                      width: portfolioDimonsion(100 / 5),
                      height: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        // horizontal: 5,
                        // vertical: 6,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/NetClipxLogo.png"))),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.black,
                      width: portfolioDimonsion(100 / 4),
                      child: const Center(
                        child: Text(
                          "fijrige e\njt oeerojeo ije iiujiuuoiuiououueytheriutytyuiyrtiuyrtiruytteryt\nirtuoireutre",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Flexible portfolioSubImagesArea() {
    return Flexible(
        flex: 5,
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: portfolioDimonsion(4)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imageList[1],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  imageList[2],
                  height: portfolioSubImagesSize(27),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(
                  imageList[0],
                  height: portfolioSubImagesSize(25),
                ),
              )
            ],
          ),
        ));
  }

  Flexible portfolioAdditionalImagesArea() {
    return Flexible(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: portfolioAdditionalImagesDimonsion(0)),
        color: Colors.black,
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Container(
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                horizontal: portfolioAdditionalImagesDimonsion(100 / 25),
                vertical: 10,
              ),
              child: Column(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      width: portfolioAdditionalImagesDimonsion(100 / 4),
                      height: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        // horizontal: 5,
                        // vertical: 6,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage("assets/NetClipxLogo.png"))),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.black,
                      width: portfolioAdditionalImagesDimonsion(100 / 4),
                      child: const Center(
                        child: Text(
                          "fijrige e\njt oeerojeo ije iiujiuuoiuiououueytheriutytyuiyrtiuyrtiruytteryt\nirtuoireutre",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
