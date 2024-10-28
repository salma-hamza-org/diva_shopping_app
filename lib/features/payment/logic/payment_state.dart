import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _Initial;

  const factory PaymentState.loading() = _PaymentLoading;

  const factory PaymentState.success() = _PaymentSuccess;

  const factory PaymentState.failure(String errorMessage) = _PaymentFailure;
}
