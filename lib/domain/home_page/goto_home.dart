import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personalwebsite/applications/appbar_bloc/appbar_bloc.dart';
import 'package:personalwebsite/core/widgets/appbar_preferresize.dart';
import 'package:personalwebsite/main.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_homepage_drawer.dart';
import 'package:personalwebsite/section/page_main/widgets/slider_menu_drawer.dart';

toHomePage() {
  final menuDrawerState = SliderMenuDrawer.sliderMenuDrawerKey.currentState;
  final homePageDrawerState =
      SliderHomePageDrawer.sliderHomePageDrawerKey.currentState;
  if (menuDrawerState != null && homePageDrawerState != null) {
    menuDrawerState.closeSlider();
    homePageDrawerState.openSlider();
    // appBarNotifier.value = false;
    // appBarNotifier.notifyListeners();
    BlocProvider.of<AppbarBloc>(NavigationService.navigatorKey.currentContext!)
        .add(const HideToTopAppBar());
  }
}
