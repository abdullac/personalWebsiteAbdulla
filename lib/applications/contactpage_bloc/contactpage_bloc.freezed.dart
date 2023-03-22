// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contactpage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactpageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitForm value) submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitForm value)? submitForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactpageEventCopyWith<$Res> {
  factory $ContactpageEventCopyWith(
          ContactpageEvent value, $Res Function(ContactpageEvent) then) =
      _$ContactpageEventCopyWithImpl<$Res, ContactpageEvent>;
}

/// @nodoc
class _$ContactpageEventCopyWithImpl<$Res, $Val extends ContactpageEvent>
    implements $ContactpageEventCopyWith<$Res> {
  _$ContactpageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubmitFormCopyWith<$Res> {
  factory _$$SubmitFormCopyWith(
          _$SubmitForm value, $Res Function(_$SubmitForm) then) =
      __$$SubmitFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFormCopyWithImpl<$Res>
    extends _$ContactpageEventCopyWithImpl<$Res, _$SubmitForm>
    implements _$$SubmitFormCopyWith<$Res> {
  __$$SubmitFormCopyWithImpl(
      _$SubmitForm _value, $Res Function(_$SubmitForm) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitForm implements SubmitForm {
  const _$SubmitForm();

  @override
  String toString() {
    return 'ContactpageEvent.submitForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() submitForm,
  }) {
    return submitForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? submitForm,
  }) {
    return submitForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitForm value) submitForm,
  }) {
    return submitForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitForm value)? submitForm,
  }) {
    return submitForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitForm value)? submitForm,
    required TResult orElse(),
  }) {
    if (submitForm != null) {
      return submitForm(this);
    }
    return orElse();
  }
}

abstract class SubmitForm implements ContactpageEvent {
  const factory SubmitForm() = _$SubmitForm;
}

/// @nodoc
mixin _$ContactpageState {
  bool get submissionFailed => throw _privateConstructorUsedError;
  bool get validationFailed => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactpageStateCopyWith<ContactpageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactpageStateCopyWith<$Res> {
  factory $ContactpageStateCopyWith(
          ContactpageState value, $Res Function(ContactpageState) then) =
      _$ContactpageStateCopyWithImpl<$Res, ContactpageState>;
  @useResult
  $Res call({bool submissionFailed, bool validationFailed, bool submitted});
}

/// @nodoc
class _$ContactpageStateCopyWithImpl<$Res, $Val extends ContactpageState>
    implements $ContactpageStateCopyWith<$Res> {
  _$ContactpageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionFailed = null,
    Object? validationFailed = null,
    Object? submitted = null,
  }) {
    return _then(_value.copyWith(
      submissionFailed: null == submissionFailed
          ? _value.submissionFailed
          : submissionFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      validationFailed: null == validationFailed
          ? _value.validationFailed
          : validationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactpageStateCopyWith<$Res>
    implements $ContactpageStateCopyWith<$Res> {
  factory _$$_ContactpageStateCopyWith(
          _$_ContactpageState value, $Res Function(_$_ContactpageState) then) =
      __$$_ContactpageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool submissionFailed, bool validationFailed, bool submitted});
}

/// @nodoc
class __$$_ContactpageStateCopyWithImpl<$Res>
    extends _$ContactpageStateCopyWithImpl<$Res, _$_ContactpageState>
    implements _$$_ContactpageStateCopyWith<$Res> {
  __$$_ContactpageStateCopyWithImpl(
      _$_ContactpageState _value, $Res Function(_$_ContactpageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submissionFailed = null,
    Object? validationFailed = null,
    Object? submitted = null,
  }) {
    return _then(_$_ContactpageState(
      submissionFailed: null == submissionFailed
          ? _value.submissionFailed
          : submissionFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      validationFailed: null == validationFailed
          ? _value.validationFailed
          : validationFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContactpageState implements _ContactpageState {
  const _$_ContactpageState(
      {required this.submissionFailed,
      required this.validationFailed,
      required this.submitted});

  @override
  final bool submissionFailed;
  @override
  final bool validationFailed;
  @override
  final bool submitted;

  @override
  String toString() {
    return 'ContactpageState(submissionFailed: $submissionFailed, validationFailed: $validationFailed, submitted: $submitted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactpageState &&
            (identical(other.submissionFailed, submissionFailed) ||
                other.submissionFailed == submissionFailed) &&
            (identical(other.validationFailed, validationFailed) ||
                other.validationFailed == validationFailed) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, submissionFailed, validationFailed, submitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactpageStateCopyWith<_$_ContactpageState> get copyWith =>
      __$$_ContactpageStateCopyWithImpl<_$_ContactpageState>(this, _$identity);
}

abstract class _ContactpageState implements ContactpageState {
  const factory _ContactpageState(
      {required final bool submissionFailed,
      required final bool validationFailed,
      required final bool submitted}) = _$_ContactpageState;

  @override
  bool get submissionFailed;
  @override
  bool get validationFailed;
  @override
  bool get submitted;
  @override
  @JsonKey(ignore: true)
  _$$_ContactpageStateCopyWith<_$_ContactpageState> get copyWith =>
      throw _privateConstructorUsedError;
}
