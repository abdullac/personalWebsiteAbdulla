import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:personalwebsite/core/responsive/screen.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/home_page/page_home.dart';
import 'package:personalwebsite/section/page_main/main_core/Widget/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/main_core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/main_core/widgets.dart';
import 'package:personalwebsite/section/page_main/page_main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MenuDrawerList extends StatelessWidget {
  const MenuDrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900]?.withOpacity(0.95),
          gradient: LinearGradient(
            colors: [
               Colors.black.withOpacity(0.9),
               Colors.grey[900]!.withOpacity(0.95),
            ],
            stops: const [
              0,
              0.7
            ]
          )),
      child: ResponsiveBuilder(builder: (context, sizingInfo) {
        Screen(sizingInfo: sizingInfo);
        return Transform.translate(
          offset: Offset(0, -mainShortSize(10)),
          child: ListView.separated(
            // shrinkWrap: true,
            scrollDirection:
                mainIsLandscapeMobile() ? Axis.horizontal : Axis.vertical,
            itemBuilder: (context, index) {
              return menuDrawerPortions()[index];
            },
            separatorBuilder: (context, index) => Container(
              height: 0.5,
              width: 0.5,
              color: Colors.redAccent.withOpacity(0.3),
            ),
            itemCount: 2,
          ),
        );
      }),
    );
  }

  List<Widget> menuDrawerPortions() {
    return [
      imageAvatarAndName(),
      setionTilesGridView(),
    ];
  }

  Widget imageAvatarAndName() {
    var imageAvatarAndNameWidgets = [
      SizedBox(
        height: mainHeight(35),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: circleProfileImage(),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Abdulla",
          style: TextStyle(
              color: Colors.redAccent[700],
              fontWeight: FontWeight.w900,
              fontSize: mainShortSize(4)),
        ),
      ),
    ];

    return InkWell(
      onTap: () => toHomePage(),
      child: SizedBox(
        height: mainIsLandscapeMobile() ? mainHeight(100) : mainHeight(45),
        child: mainIsTablet()
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imageAvatarAndNameWidgets,
              )
            : Column(
                mainAxisAlignment: mainIsLandscapeMobile()
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: imageAvatarAndNameWidgets,
              ),
      ),
    );
  }

  Widget setionTilesGridView() {
    return SizedBox(
      height: mainIsLandscapeMobile() ? mainHeight(100) : mainHeight(45),
      width: mainWidth(30),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: mainIsTablet() ? 2 : 1, childAspectRatio: 5),
        children: [
          sectionTile(Icons.home, "Home", 0),
          sectionTile(Icons.person, "About", 1),
          sectionTile(Icons.history, "Portfolio", 2),
          sectionTile(Icons.work_history_rounded, "Work Ethics", 3),
          sectionTile(Icons.work_rounded, "Skills", 4),
          sectionTile(Icons.call_rounded, "Contact", 6),
        ],
      ),
    );
  }

  Widget sectionTile(IconData icon, String sectionTitle, int index) {
    return InkWell(
      onTap: () {
        drawerMenuClose();
        if (index == 0) {
          toHomePage();
        } else {
          PageMain.itemScrollController.scrollTo(
              index: index, duration: const Duration(milliseconds: 700));
          PageMain.itemPositionListner.itemPositions.addListener(() {});
        }
      },
      child: Center(
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.redAccent[400],
          ),
          title: Text(
            sectionTitle,
            style: TextStyle(color: Colors.redAccent[100]),
          ),
        ),
      ),
    );
  }
}

// toHomePage() {
//   final drawerStateHomePage =
//       SliderMenuDrawer.sliderDrawerKeyHomePage.currentState;
//   final drawerState = SliderMenuDrawer.sliderDrawerKey.currentState;
//   print("toHomePage1");
//   if (drawerStateHomePage != null && drawerState != null) {
//     print("toHomePage2");
//     if (drawerStateHomePage.isDrawerOpen) {
//       // drawerStateHomePage.closeSlider();
//       // drawerState.closeSlider();
//     } else {
//       drawerStateHomePage.openSlider();
//       // drawerState.closeSlider();
//     }
//     MyApp.appBarNotifier.value = false;
//     MyApp.appBarNotifier.notifyListeners();
//   }
// }

toHomePage() {
  final menuDrawerState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  final homePageDrawerState =
      SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
  if (menuDrawerState != null && homePageDrawerState != null) {
    menuDrawerState.closeSlider();
    homePageDrawerState.openSlider();
    // if (menuDrawerState.isDrawerOpen) {
    //   menuDrawerState.closeSlider();
    //   MyApp.drawerSideNotifier.value = DrawerSide.right;
    // } else {
    //   //
    // }
    MyApp.appBarNotifier.value = false;
    MyApp.appBarNotifier.notifyListeners();
  }
}
