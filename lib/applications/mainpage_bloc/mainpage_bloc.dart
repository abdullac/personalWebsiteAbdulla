import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personalwebsite/section/home_page/core/widgets/goto_mainpage_button_and_gesture.dart';
import 'package:personalwebsite/section/page_main/widgets/mainpage_goto_top_button.dart';

part 'mainpage_event.dart';
part 'mainpage_state.dart';
part 'mainpage_bloc.freezed.dart';

class MainpageBloc extends Bloc<MainpageEvent, MainpageState> {
  MainpageBloc() : super(MainpageState.initial()) {
    on<GotoMainPage>((event, emit) {
      homePageToMainpage();
    });
    on<GoToTop>((event, emit) {
      mainpageGotoTopButtonPressed();
    });
  }
}
