import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:stone_payment_helper/model/checkout_request.dart';

import 'stone_payment_helper_method_channel.dart';

abstract class StonePaymentHelperPlatform extends PlatformInterface {
  /// Constructs a StonePaymentHelperPlatform.
  StonePaymentHelperPlatform() : super(token: _token);

  static final Object _token = Object();

  static StonePaymentHelperPlatform _instance =
      MethodChannelStonePaymentHelper();

  /// The default instance of [StonePaymentHelperPlatform] to use.
  ///
  /// Defaults to [MethodChannelStonePaymentHelper].
  static StonePaymentHelperPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StonePaymentHelperPlatform] when
  /// they register themselves.
  static set instance(StonePaymentHelperPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> checkout(CheckoutRequest request) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
