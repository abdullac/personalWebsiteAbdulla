part of 'appbar_bloc.dart';

@freezed
class AppbarState with _$AppbarState {
  const factory AppbarState({
    required bool isShow,
    required Color? backgoundColor,
    required String title,
  }) = _AppbarState;

  factory AppbarState.initial() {
    return const AppbarState(
        isShow: false,
        backgoundColor: kGrey,
        title: "",
        );
  }
}
