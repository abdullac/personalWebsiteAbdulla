import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/functions.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/home_page/home_page_real/home_page_real.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomepageGridview extends StatelessWidget {
  const HomepageGridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        int crossAxisCount = Screen.internal.isPortrait
            ? 6
            : Screen.internal.isSquare
                ? 9
                : 12;
        return Container(
          color: const Color.fromARGB(255, 26, 26, 26).withOpacity(1.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount),
              itemCount:
                  (((longSize100(100) / (shortSize100(100) / crossAxisCount)) +
                              1) *
                          crossAxisCount)
                      .round(),
              itemBuilder: (BuildContext ctx, int index) {
                return Column(
                  children: [
                    Flexible(
                      flex: index % 2 == 0 ? 1 : 5,
                      child: Container(
                        color: Colors.red.withOpacity(0.0),
                      ),
                    ),
                    Flexible(
                      flex: 14,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.withOpacity(0.0),
                            image: DecorationImage(
                                image: AssetImage(
                                    imageList[index % imageList.length]))),
                      ),
                    ),
                    Flexible(
                      flex: index % 2 == 0 ? 5 : 1,
                      child: Container(
                        color: Colors.pink.withOpacity(0.0),
                      ),
                    ),
                  ],
                );
              }),
        );
      }),
    );
  }
}
