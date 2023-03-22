part of 'mainpage_bloc.dart';

@freezed
class MainpageState with _$MainpageState {
  const factory MainpageState() = _MainpageState;
  factory MainpageState.initial(){
    return const MainpageState();
  }
}
