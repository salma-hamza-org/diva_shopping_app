import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/payment/logic/payment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cart/logic/cubit/cart_cubit.dart';
import '../data/repo/payment_service.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CartCubit cartCubit; // Reference to CartCubit
  final PaymentService paymentService; // Payment service

  PaymentCubit(this.cartCubit, this.paymentService)
      : super(const PaymentState.initial());

  Future<void> completePayment(
      List<CartModel> cartModel, String currency) async {
    emit(const PaymentState.loading());

    try {
      await paymentService.processPayment(
          amount: cartCubit.calculateTotalPrice(cartModel).toInt(),
          currency: currency);
      emit(const PaymentState.success());
    } catch (e) {
      emit(PaymentState.failure(e.toString()));
    }
  }
}
