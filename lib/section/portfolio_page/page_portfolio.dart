import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:personalwebsite/section/portfolio_page/dimonsions/portfolio_dimonsion.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

ValueNotifier<int> subImagesAreaIndexNotifier = ValueNotifier(0);

List<String> portfolioImageList = [
  "assets/netflipzhome.webp",
  "assets/netflipzcomingsoon.webp",
  "assets/netflipzeveryoneswathing.webp",
  "assets/netflipzfastluaghs.webp",
  "assets/netflipztopsearches.webp",
  "assets/netflipzsearchresults.webp",
  "assets/netflipsdownloads.webp",
  "assets/Netflipz.png",
];

List<String> portfolioTextList = [
  "The wonderful Home page of Netflipz",
  "This pageshows Coming soon items",
  "Everyone's wathing items List here",
  "You can watch Netflipz users Short video",
  "Top search items short here",
  "You can search here, Which item you wanted",
  "This is downloads page",
  "Netflipz simple logo",
];

List<String> portfolioMobileImageList = [
  "assets/netflipzmobilehome.webp",
  "assets/netflipzmobilecomingsoon.webp",
  "assets/netflipzmobileeveryoneswatching.webp",
  "assets/netflipzmobilefastluaghs.webp",
  "assets/netflipzmobiletopsearches.webp",
  "assets/netflipzmobilesearchresults.webp",
  "assets/netflipzmobiledownloads.webp",
  "assets/netFlipzLogoA.webp",
];

List<String> portfolioTabImageList = [
  "assets/netflipztabhome.webp",
  "assets/netflipztabcomingsoon.webp",
  "assets/netflipztabeveryoneswatching.webp",
  "assets/netflipztabfastluaghs.webp",
  "assets/netflipztabtopsearches.webp",
  "assets/netflipztabsearchresults.webp",
  "assets/netflipztabdownloads.webp",
  "assets/netFlipzLogoA.webp",
];

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  ItemScrollController _itemScrollController = ItemScrollController();
  ItemPositionsListener _itemPositionsListener = ItemPositionsListener.create();

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
                  height: mainLongSize(100) - mainHeight(15),
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
      child: Image.asset("assets/Netflipz.png"),
    );
  }

  Flexible portfolioImagesArea() {
    return Flexible(
      flex: 6,
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            child: ScrollablePositionedList.builder(
              itemScrollController: _itemScrollController,
              itemPositionsListener: _itemPositionsListener,
              scrollDirection: Axis.horizontal,
              itemCount: portfolioImageList.length,
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
                          decoration: BoxDecoration(
                            color: Colors.black,
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(portfolioImageList[index])),
                            // boxShadow: const [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     offset: Offset(0.5, 0.5),
                            //     blurRadius: 0.5,
                            //     spreadRadius: 0.5,
                            //   )
                            // ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          color: Colors.black,
                          width: portfolioDimonsion(100 / 4),
                          child: Center(
                            child: Text(
                              portfolioTextList[index],
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: portfolioDotList(),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> portfolioDotList() {
    List<Widget> dotList = [];
    for (int index = 0; index < portfolioImageList.length; index++) {
      dotList.add(InkWell(
        onTap: () async {
          await _itemScrollController.scrollTo(
              index: index, duration: const Duration(milliseconds: 300));
          _itemPositionsListener.itemPositions.addListener(() {});
          subImagesAreaIndexNotifier.value = index;
          subImagesAreaIndexNotifier.notifyListeners();
        },
        child: Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey[300]?.withOpacity(0.6),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Center(
              child: Text(
            "${index + 1}",
            style: TextStyle(
                fontSize: mainShortSize(
                  1.6,
                ),
                color: Colors.black),
          )),
        ),
      ));
    }
    return dotList;
  }

  Flexible portfolioSubImagesArea() {
    return Flexible(
        flex: 5,
        child: ValueListenableBuilder(
            valueListenable: subImagesAreaIndexNotifier,
            builder: (context, newsubImageIndex, _) {
              return Container(
                color: Colors.black,
                padding: EdgeInsets.symmetric(
                    vertical: 8, horizontal: portfolioDimonsion(4)),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        portfolioImageList[newsubImageIndex],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        portfolioTabImageList[newsubImageIndex],
                        height: portfolioSubImagesSize(27),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        portfolioMobileImageList[newsubImageIndex],
                        height: portfolioSubImagesSize(25),
                      ),
                    )
                  ],
                ),
              );
            }));
  }

  Flexible portfolioAdditionalImagesArea() {
    return Flexible(
      flex: 5,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: portfolioAdditionalImagesDimonsion(0)),
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
