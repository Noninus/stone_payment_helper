import 'package:stone_payment_helper/model/checkout_request.dart';

import 'stone_payment_helper_platform_interface.dart';

class StonePaymentHelper {
  Future<String?> getPlatformVersion() {
    return StonePaymentHelperPlatform.instance.getPlatformVersion();
  }

  Future<String?> checkout(CheckoutRequest checkoutRequest) {
    return StonePaymentHelperPlatform.instance.checkout(checkoutRequest);
  }
}
