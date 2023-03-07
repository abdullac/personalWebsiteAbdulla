import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/page_main/main_dimonsion/main_dimonsions.dart';
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
        height: mainHeight(100),
        color: Colors.purpleAccent,
        child: Column(
          children: [
            portfolioHeading(),
            Flexible(
              flex: 17,
              child: Container(
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
          ],
        ),
      );
    });
  }

  Flexible portfolioHeading() {
    return Flexible(
      flex: 3,
      child: Container(
        color: Colors.blueGrey[300],
        child: Center(
          child: Text(
            "My Works",
            style: mainHeadLineStyle(),
          ),
        ),
      ),
    );
  }

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
        color: Colors.blueGrey[400],
        child: ScrollablePositionedList.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (ctx, index) {
            return Container(
              color: Colors.brown[500],
              margin: EdgeInsets.symmetric(
                horizontal: portfolioDimonsion(100/12.5),
                vertical: 10,
              ),
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      width: portfolioDimonsion((100 / 6)),
                      height: double.infinity,
                      margin: const EdgeInsets.symmetric(
                        // horizontal: 5,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.brown[400],
                          image: const DecorationImage(
                              image: AssetImage("assets/NetClipxLogo.png"))),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      width: portfolioDimonsion(100/4),
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
          color: Colors.blueGrey[500],
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink[400],
                    image: DecorationImage(image: AssetImage(imageList[1])),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink[500],
                    image: DecorationImage(image: AssetImage(imageList[2])),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 200,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.pink[300],
                    image: DecorationImage(image: AssetImage(imageList[4])),
                  ),
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
          color: Colors.blueGrey[600],
          child: ScrollablePositionedList.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (ctx, index) {
              return Container(
                color: Colors.brown[500],
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      height: 10,
                      width: 15,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 6),
                      decoration: BoxDecoration(
                          color: Colors.brown[400],
                          image: DecorationImage(
                              image: AssetImage(imageList[index]))),
                    ),
                    const Center(
                      child: Text(
                        "fuiyrtiuyrtiruytteryt\nirtuoireutre",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
