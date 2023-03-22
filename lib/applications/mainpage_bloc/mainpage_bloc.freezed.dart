// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mainpage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainpageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToMainPage,
    required TResult Function() goToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToMainPage,
    TResult? Function()? goToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToMainPage,
    TResult Function()? goToTop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoMainPage value) goToMainPage,
    required TResult Function(GoToTop value) goToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoMainPage value)? goToMainPage,
    TResult? Function(GoToTop value)? goToTop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoMainPage value)? goToMainPage,
    TResult Function(GoToTop value)? goToTop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainpageEventCopyWith<$Res> {
  factory $MainpageEventCopyWith(
          MainpageEvent value, $Res Function(MainpageEvent) then) =
      _$MainpageEventCopyWithImpl<$Res, MainpageEvent>;
}

/// @nodoc
class _$MainpageEventCopyWithImpl<$Res, $Val extends MainpageEvent>
    implements $MainpageEventCopyWith<$Res> {
  _$MainpageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GotoMainPageCopyWith<$Res> {
  factory _$$GotoMainPageCopyWith(
          _$GotoMainPage value, $Res Function(_$GotoMainPage) then) =
      __$$GotoMainPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotoMainPageCopyWithImpl<$Res>
    extends _$MainpageEventCopyWithImpl<$Res, _$GotoMainPage>
    implements _$$GotoMainPageCopyWith<$Res> {
  __$$GotoMainPageCopyWithImpl(
      _$GotoMainPage _value, $Res Function(_$GotoMainPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotoMainPage implements GotoMainPage {
  const _$GotoMainPage();

  @override
  String toString() {
    return 'MainpageEvent.goToMainPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GotoMainPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToMainPage,
    required TResult Function() goToTop,
  }) {
    return goToMainPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToMainPage,
    TResult? Function()? goToTop,
  }) {
    return goToMainPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToMainPage,
    TResult Function()? goToTop,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoMainPage value) goToMainPage,
    required TResult Function(GoToTop value) goToTop,
  }) {
    return goToMainPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoMainPage value)? goToMainPage,
    TResult? Function(GoToTop value)? goToTop,
  }) {
    return goToMainPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoMainPage value)? goToMainPage,
    TResult Function(GoToTop value)? goToTop,
    required TResult orElse(),
  }) {
    if (goToMainPage != null) {
      return goToMainPage(this);
    }
    return orElse();
  }
}

abstract class GotoMainPage implements MainpageEvent {
  const factory GotoMainPage() = _$GotoMainPage;
}

/// @nodoc
abstract class _$$GoToTopCopyWith<$Res> {
  factory _$$GoToTopCopyWith(_$GoToTop value, $Res Function(_$GoToTop) then) =
      __$$GoToTopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToTopCopyWithImpl<$Res>
    extends _$MainpageEventCopyWithImpl<$Res, _$GoToTop>
    implements _$$GoToTopCopyWith<$Res> {
  __$$GoToTopCopyWithImpl(_$GoToTop _value, $Res Function(_$GoToTop) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToTop implements GoToTop {
  const _$GoToTop();

  @override
  String toString() {
    return 'MainpageEvent.goToTop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToTop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() goToMainPage,
    required TResult Function() goToTop,
  }) {
    return goToTop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? goToMainPage,
    TResult? Function()? goToTop,
  }) {
    return goToTop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? goToMainPage,
    TResult Function()? goToTop,
    required TResult orElse(),
  }) {
    if (goToTop != null) {
      return goToTop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GotoMainPage value) goToMainPage,
    required TResult Function(GoToTop value) goToTop,
  }) {
    return goToTop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GotoMainPage value)? goToMainPage,
    TResult? Function(GoToTop value)? goToTop,
  }) {
    return goToTop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GotoMainPage value)? goToMainPage,
    TResult Function(GoToTop value)? goToTop,
    required TResult orElse(),
  }) {
    if (goToTop != null) {
      return goToTop(this);
    }
    return orElse();
  }
}

abstract class GoToTop implements MainpageEvent {
  const factory GoToTop() = _$GoToTop;
}

/// @nodoc
mixin _$MainpageState {}

/// @nodoc
abstract class $MainpageStateCopyWith<$Res> {
  factory $MainpageStateCopyWith(
          MainpageState value, $Res Function(MainpageState) then) =
      _$MainpageStateCopyWithImpl<$Res, MainpageState>;
}

/// @nodoc
class _$MainpageStateCopyWithImpl<$Res, $Val extends MainpageState>
    implements $MainpageStateCopyWith<$Res> {
  _$MainpageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MainpageStateCopyWith<$Res> {
  factory _$$_MainpageStateCopyWith(
          _$_MainpageState value, $Res Function(_$_MainpageState) then) =
      __$$_MainpageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MainpageStateCopyWithImpl<$Res>
    extends _$MainpageStateCopyWithImpl<$Res, _$_MainpageState>
    implements _$$_MainpageStateCopyWith<$Res> {
  __$$_MainpageStateCopyWithImpl(
      _$_MainpageState _value, $Res Function(_$_MainpageState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MainpageState implements _MainpageState {
  const _$_MainpageState();

  @override
  String toString() {
    return 'MainpageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MainpageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _MainpageState implements MainpageState {
  const factory _MainpageState() = _$_MainpageState;
}
