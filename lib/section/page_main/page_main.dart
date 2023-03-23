import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/strings.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_widgets.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';
import 'package:personalwebsite/section/page_main/core/main_dimonsions.dart';
import 'package:personalwebsite/section/page_main/widgets/main_page_listview.dart';
import 'package:personalwebsite/section/page_main/widgets/mainpage_goto_top_button.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

ValueNotifier<bool> initialOpeningNotifier = ValueNotifier(true);
ValueNotifier<bool> gotoTopButtonNotifier = ValueNotifier(false);

int lastforwardScrolledTime = DateTime.now().millisecondsSinceEpoch;

class PageMain extends StatelessWidget {
  const PageMain({Key? key}) : super(key: key);

  static final ItemScrollController itemScrollController =
      ItemScrollController();
  static final ItemPositionsListener itemPositionListner =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: kBlack,
        systemNavigationBarIconBrightness: Brightness.dark));
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool isAddVisit = await addVisitToGoogleSheetle();
    });
    return SliderHomePageDrawer(
      mainPageWidget: SliderMenuDrawer(
        mainPageWidget: Container(
          color: kBlack,
          child: NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              whenMainpageListviewScroll(notification);
              return true;
            },
            child: Stack(
              children: [
                mainPageListView(),
                gotoTopButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> whenMainpageListviewScroll(
      UserScrollNotification notification) async {
    final scrollPixels = notification.metrics.pixels;
    gotoTopButtonNotifier.value =
        scrollPixels >= mainHeight(100) ? true : false;
    final scrollDirection = notification.direction.name;
    drawerMenuClose();
    if (scrollDirection == "reverse") {
      // appBarNotifier.value = false;
      BlocProvider.of<AppbarBloc>(
              NavigationService.navigatorKey.currentContext!)
          .add(const HideToTopAppBar());
    } else if (scrollDirection == "forward") {
      whenForwardScroll();
      await afterForwardSroll5sec();
      await afterForwardSroll10sec();
    }
    appBarNotifier.notifyListeners();
  }

  void whenForwardScroll() {
    lastforwardScrolledTime = DateTime.now().millisecondsSinceEpoch;
    // appBarNotifier.value = true;

    BlocProvider.of<AppbarBloc>(NavigationService.navigatorKey.currentContext!)
        .add(const ShowfromTopAppBar());
    appBarImageCircle = appBarCircleImage();
    goToLinkedInLogo = LinkedInLogo();
    // appBarTitle = myName;
    // appBarBackgroundColor = kRedAccent;
  }

  Future<void> afterForwardSroll5sec() async {
    await Future.delayed(const Duration(seconds: 5), () {
      if (lastforwardScrolledTime <
          DateTime.now().millisecondsSinceEpoch - 4999) {
        appBarImageCircle = null;
        goToLinkedInLogo = null;
        BlocProvider.of<AppbarBloc>(NavigationService.navigatorKey.currentContext!)
        .add(const TransparentBackground());
        // appBarTitle = "";
        // appBarBackgroundColor = Colors.transparent;
        // appBarNotifier.notifyListeners();
      }
    });
  }

  Future<void> afterForwardSroll10sec() async {
    await Future.delayed(const Duration(seconds: 5), () {
      if (lastforwardScrolledTime <
          DateTime.now().millisecondsSinceEpoch - 9999) {
        BlocProvider.of<AppbarBloc>(
                NavigationService.navigatorKey.currentContext!)
            .add(const HideToTopAppBar());
        // appBarNotifier.value = false;
        // appBarNotifier.notifyListeners();
      }
    });
  }
}

drawerMenuClose() {
  final drawerMenuState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  if (drawerMenuState != null) {
    drawerMenuState.isDrawerOpen ? drawerMenuState.closeSlider() : null;
  }
}

//////////////////////////////////////////////////////////////////////////////////////
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class HomePage3 extends StatelessWidget {
  const HomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mainShortSize(0),
      color: kBlack,
    );
  }
}

class MyServicesPage extends StatelessWidget {
  const MyServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class VisitMyWorksAndCode extends StatelessWidget {
  const VisitMyWorksAndCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class SocialMediaIconsPosts extends StatelessWidget {
  const SocialMediaIconsPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

///////////////////////////////////////////////////////////////////////////







Future<bool> addVisitToGoogleSheetle() async {
  bool seccesSubmit;
  const sriptUrl =
      "https://script.google.com/macros/s/AKfycbwALvApnffFwLcmPAPhlADRvVYMgYep5AClrkQZnhLA7cIHeXAfp1m7GPKbm-7pudY/exec";
  String tempName = "n";
  String tempContact = "c";
  String tempEmail = "e";
  String tempMessage = "m";
  String? tempVisit = "yes";

  String queryString =
      "?name=$tempName&contact=$tempContact&email=$tempEmail&message=$tempMessage&visit=$tempVisit";
  var finalUri = Uri.parse(sriptUrl + queryString);
  try {
    var response = await http.get(finalUri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var bodyResponse = convert.jsonDecode(response.body);
      seccesSubmit = true;
    } else {
      seccesSubmit = false;
    }
  } catch (e) {
    seccesSubmit = false;
  }
  return seccesSubmit;
}
