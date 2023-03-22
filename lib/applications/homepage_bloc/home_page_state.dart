part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState() = _HomePageState;
  factory HomePageState.initial(){
    return const HomePageState();
  }
}
