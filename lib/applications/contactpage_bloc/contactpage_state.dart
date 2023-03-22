part of 'contactpage_bloc.dart';

@freezed
class ContactpageState with _$ContactpageState {
  const factory ContactpageState({
    required bool submissionFailed,
    required bool validationFailed,
    required bool submitted,
  }) = _ContactpageState;
  factory ContactpageState.intitial() {
    return const ContactpageState(
      submissionFailed: false,
      validationFailed: false,
      submitted: false,
    );
  }
}
