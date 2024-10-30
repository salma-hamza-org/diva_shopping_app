// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TabChangedImplCopyWith<$Res> {
  factory _$$TabChangedImplCopyWith(
          _$TabChangedImpl value, $Res Function(_$TabChangedImpl) then) =
      __$$TabChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$TabChangedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$TabChangedImpl>
    implements _$$TabChangedImplCopyWith<$Res> {
  __$$TabChangedImplCopyWithImpl(
      _$TabChangedImpl _value, $Res Function(_$TabChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$TabChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TabChangedImpl implements TabChanged {
  const _$TabChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeState.tabChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      __$$TabChangedImplCopyWithImpl<_$TabChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class TabChanged implements HomeState {
  const factory TabChanged(final int index) = _$TabChangedImpl;

  int get index;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabChangedImplCopyWith<_$TabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllProductsLoadingImplCopyWith<$Res> {
  factory _$$GetAllProductsLoadingImplCopyWith(
          _$GetAllProductsLoadingImpl value,
          $Res Function(_$GetAllProductsLoadingImpl) then) =
      __$$GetAllProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllProductsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetAllProductsLoadingImpl>
    implements _$$GetAllProductsLoadingImplCopyWith<$Res> {
  __$$GetAllProductsLoadingImplCopyWithImpl(_$GetAllProductsLoadingImpl _value,
      $Res Function(_$GetAllProductsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllProductsLoadingImpl implements GetAllProductsLoading {
  const _$GetAllProductsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.getAllProductsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) {
    return getAllProductsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) {
    return getAllProductsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsLoading != null) {
      return getAllProductsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) {
    return getAllProductsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) {
    return getAllProductsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsLoading != null) {
      return getAllProductsLoading(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsLoading implements HomeState {
  const factory GetAllProductsLoading() = _$GetAllProductsLoadingImpl;
}

/// @nodoc
abstract class _$$GetAllProductsSuccessImplCopyWith<$Res> {
  factory _$$GetAllProductsSuccessImplCopyWith(
          _$GetAllProductsSuccessImpl value,
          $Res Function(_$GetAllProductsSuccessImpl) then) =
      __$$GetAllProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel?>? productModelList});
}

/// @nodoc
class __$$GetAllProductsSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetAllProductsSuccessImpl>
    implements _$$GetAllProductsSuccessImplCopyWith<$Res> {
  __$$GetAllProductsSuccessImplCopyWithImpl(_$GetAllProductsSuccessImpl _value,
      $Res Function(_$GetAllProductsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productModelList = freezed,
  }) {
    return _then(_$GetAllProductsSuccessImpl(
      freezed == productModelList
          ? _value._productModelList
          : productModelList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel?>?,
    ));
  }
}

/// @nodoc

class _$GetAllProductsSuccessImpl implements GetAllProductsSuccess {
  const _$GetAllProductsSuccessImpl(final List<ProductModel?>? productModelList)
      : _productModelList = productModelList;

  final List<ProductModel?>? _productModelList;
  @override
  List<ProductModel?>? get productModelList {
    final value = _productModelList;
    if (value == null) return null;
    if (_productModelList is EqualUnmodifiableListView)
      return _productModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState.getAllProductsSuccess(productModelList: $productModelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productModelList, _productModelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productModelList));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductsSuccessImplCopyWith<_$GetAllProductsSuccessImpl>
      get copyWith => __$$GetAllProductsSuccessImplCopyWithImpl<
          _$GetAllProductsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) {
    return getAllProductsSuccess(productModelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) {
    return getAllProductsSuccess?.call(productModelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsSuccess != null) {
      return getAllProductsSuccess(productModelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) {
    return getAllProductsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) {
    return getAllProductsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsSuccess != null) {
      return getAllProductsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsSuccess implements HomeState {
  const factory GetAllProductsSuccess(
          final List<ProductModel?>? productModelList) =
      _$GetAllProductsSuccessImpl;

  List<ProductModel?>? get productModelList;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllProductsSuccessImplCopyWith<_$GetAllProductsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllProductsErrorImplCopyWith<$Res> {
  factory _$$GetAllProductsErrorImplCopyWith(_$GetAllProductsErrorImpl value,
          $Res Function(_$GetAllProductsErrorImpl) then) =
      __$$GetAllProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetAllProductsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetAllProductsErrorImpl>
    implements _$$GetAllProductsErrorImplCopyWith<$Res> {
  __$$GetAllProductsErrorImplCopyWithImpl(_$GetAllProductsErrorImpl _value,
      $Res Function(_$GetAllProductsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetAllProductsErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllProductsErrorImpl implements GetAllProductsError {
  const _$GetAllProductsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'HomeState.getAllProductsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductsErrorImplCopyWith<_$GetAllProductsErrorImpl> get copyWith =>
      __$$GetAllProductsErrorImplCopyWithImpl<_$GetAllProductsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) tabChanged,
    required TResult Function() getAllProductsLoading,
    required TResult Function(List<ProductModel?>? productModelList)
        getAllProductsSuccess,
    required TResult Function(String error) getAllProductsError,
  }) {
    return getAllProductsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int index)? tabChanged,
    TResult? Function()? getAllProductsLoading,
    TResult? Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult? Function(String error)? getAllProductsError,
  }) {
    return getAllProductsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? tabChanged,
    TResult Function()? getAllProductsLoading,
    TResult Function(List<ProductModel?>? productModelList)?
        getAllProductsSuccess,
    TResult Function(String error)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsError != null) {
      return getAllProductsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(TabChanged value) tabChanged,
    required TResult Function(GetAllProductsLoading value)
        getAllProductsLoading,
    required TResult Function(GetAllProductsSuccess value)
        getAllProductsSuccess,
    required TResult Function(GetAllProductsError value) getAllProductsError,
  }) {
    return getAllProductsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(TabChanged value)? tabChanged,
    TResult? Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult? Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult? Function(GetAllProductsError value)? getAllProductsError,
  }) {
    return getAllProductsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(TabChanged value)? tabChanged,
    TResult Function(GetAllProductsLoading value)? getAllProductsLoading,
    TResult Function(GetAllProductsSuccess value)? getAllProductsSuccess,
    TResult Function(GetAllProductsError value)? getAllProductsError,
    required TResult orElse(),
  }) {
    if (getAllProductsError != null) {
      return getAllProductsError(this);
    }
    return orElse();
  }
}

abstract class GetAllProductsError implements HomeState {
  const factory GetAllProductsError({required final String error}) =
      _$GetAllProductsErrorImpl;

  String get error;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllProductsErrorImplCopyWith<_$GetAllProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
