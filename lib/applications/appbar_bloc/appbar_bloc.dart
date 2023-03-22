import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personalwebsite/core/constents/colors.dart';
import 'package:personalwebsite/core/constents/strings.dart';

part 'appbar_event.dart';
part 'appbar_state.dart';
part 'appbar_bloc.freezed.dart';

class AppbarBloc extends Bloc<AppbarEvent, AppbarState> {
  AppbarBloc() : super(AppbarState.initial()) {
      on<ShowfromTopAppBar>((event, emit) {
      emit(
        state.copyWith(
          isShow: true,
          backgoundColor: kRedAccent,
          title: myName,
        ),
      );
    });
    on<HideToTopAppBar>((event, emit) {
      emit(
        state.copyWith(
          isShow: false,
          backgoundColor: kTransparent,
          title: "",
        ),
      );
    });
    on<TransparentBackground>((event, emit) {
      emit(
        state.copyWith(
          isShow: true,
          backgoundColor: kTransparent,
          title: "",
        ),
      );
    });
    // on<RedColorBackground>((event, emit) {
    //   emit(
    //     state.copyWith(
    //       isShow: true,
    //       backgoundColor: kRedAccent,
    //       leading: Container(width: 10, height: 10, color: kGrey),
    //       title: "ddd",
    //       actions: [],
    //     ),
    //   );
    // });
  }
}
