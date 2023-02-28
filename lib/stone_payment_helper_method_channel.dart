import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:stone_payment_helper/model/checkout_request.dart';

import 'stone_payment_helper_platform_interface.dart';

/// An implementation of [StonePaymentHelperPlatform] that uses method channels.
class MethodChannelStonePaymentHelper extends StonePaymentHelperPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('stone_payment_helper');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> checkout(CheckoutRequest request) async {
    String message = "";
    try {
      await methodChannel.invokeMethod<String>('sendDeeplink', {
        "amount": request.amount,
        "editableAmount": request.editableAmount,
        "installmentCount": request.installmentCount,
        "transactionType": request.transactionType,
        "installmentType": request.installmentType,
        "orderId": request.orderId,
        "returnScheme": request.returnScheme
      });
    } on PlatformException catch (e) {
      message = "Erro ao enviar deeplink: ${e.message}.";
    }

    return message;
  }
}
