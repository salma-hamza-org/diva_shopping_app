import 'package:dio/dio.dart';
import 'package:diva_shopping_app/core/helpers/constants.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentService {
  final Dio dio;

  PaymentService({required this.dio});

  Future<void> processPayment(
      {required int amount, required String currency}) async {
    try {
      // Step 1: Send request to your backend for a Payment Intent
      final response = await dio.post(
        'https://api.stripe.com/v1/payment_intents',
        data: {'amount': amount * 100, 'currency': currency},
        options: Options(headers: {
          'Authorization': 'Bearer $stripeSecretKey',
          'Content-Type': 'application/x-www-form-urlencoded',
        }),
      );

      // Step 2: Get the clientSecret from response
      final clientSecret = response.data['client_secret'];

      // Step 3: Initialize the Payment Sheet
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          customFlow: true,
          merchantDisplayName: 'Flutter Stripe Store Demo',
          paymentIntentClientSecret: clientSecret,
          appearance: const PaymentSheetAppearance(
            colors: PaymentSheetAppearanceColors(
              primary: AppColors.pink,
              componentBorder: AppColors.pink,
            ),
          ),
        ),
      );

      // Step 4: Present the Payment Sheet
      await Stripe.instance.presentPaymentSheet();
      print('Payment completed successfully!');
    } catch (e) {
      // Better error handling
      throw Exception('Error in payment: $e');
    }
  }
}
