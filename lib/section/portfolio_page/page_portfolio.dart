import 'package:flutter/material.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/section/page_main/widgets/section_heading.dart';
import 'package:personalwebsite/section/portfolio_page/core/dimonsions/portfolio_dimonsion.dart';
import 'package:personalwebsite/section/portfolio_page/core/portfolio_constents.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portions/portfolio_additional_images.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portions/portfolio_images_area.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portfolio_item_heading.dart';
import 'package:personalwebsite/section/portfolio_page/widgets/portions/portfolio_sub_images.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

enum NextAAndPrevios {
  previos,
  both,
  next,
}

ValueNotifier<int> subImagesAreaIndexNotifier = ValueNotifier(0);
ValueNotifier<int> portfolioDotPositionNotifier = ValueNotifier(0);
ValueNotifier<int> additionalImageItemIndexNotifier = ValueNotifier(0);
ValueNotifier<NextAAndPrevios> nextAndPreviosNotifier =
    ValueNotifier(NextAAndPrevios.next);

bool stopPortfolioImageScroll = false;

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  static final ItemScrollController itemScrollController =
      ItemScrollController();
  static final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  static final ItemScrollController additionalImageItemScrollController =
      ItemScrollController();
  static final ItemPositionsListener additionalImageItemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      subImagesAreaIndexNotifier.notifyListeners();
      await portfolioImagesListAutoScrolling();
    });
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      Screen(sizingInfo: sizingInfo);
      return Column(
        children: [
          sectionHeading(portfolioHeading),
          portfolioArea(),
        ],
      );
    });
  }

  Container portfolioArea() {
    return Container(
      height: portfolioAreaHeight(),
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
    );
  }
}
