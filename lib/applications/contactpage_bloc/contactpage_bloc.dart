import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personalwebsite/section/contact_page/core/widgets/contact_form_widgets.dart';

part 'contactpage_event.dart';
part 'contactpage_state.dart';
part 'contactpage_bloc.freezed.dart';

class ContactpageBloc extends Bloc<ContactpageEvent, ContactpageState> {
  ContactpageBloc() : super(ContactpageState.intitial()) {
    on<SubmitForm>((event, emit) {
      emit(
        state.copyWith(
          submissionFailed: false,
          validationFailed: false,
          submitted: false,
        ),
      );

       submitForm();
    });
  }
}
