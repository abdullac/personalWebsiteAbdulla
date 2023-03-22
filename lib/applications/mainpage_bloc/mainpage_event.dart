part of 'mainpage_bloc.dart';

@freezed
class MainpageEvent with _$MainpageEvent {
  const factory MainpageEvent.goToMainPage() = GotoMainPage;
  const factory MainpageEvent.goToTop() = GoToTop;
}