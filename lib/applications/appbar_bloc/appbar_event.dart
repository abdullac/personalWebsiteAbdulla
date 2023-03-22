part of 'appbar_bloc.dart';

@freezed
class AppbarEvent with _$AppbarEvent {
  const factory AppbarEvent.showfromTopAppBar() = ShowfromTopAppBar;
  const factory AppbarEvent.hideToTopAppBar() = HideToTopAppBar;
  const factory AppbarEvent.transparentBackground() = TransparentBackground;
  // const factory AppbarEvent.redColorBackground() = RedColorBackground;
}