import 'package:flutter_test/flutter_test.dart';
import 'package:stone_payment_helper/model/checkout_request.dart';
import 'package:stone_payment_helper/stone_payment_helper.dart';
import 'package:stone_payment_helper/stone_payment_helper_platform_interface.dart';
import 'package:stone_payment_helper/stone_payment_helper_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockStonePaymentHelperPlatform
    with MockPlatformInterfaceMixin
    implements StonePaymentHelperPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> checkout(CheckoutRequest checkoutRequest) =>
      Future.value('42');
}

void main() {
  final StonePaymentHelperPlatform initialPlatform =
      StonePaymentHelperPlatform.instance;

  test('$MethodChannelStonePaymentHelper is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelStonePaymentHelper>());
  });

  test('getPlatformVersion', () async {
    StonePaymentHelper stonePaymentHelperPlugin = StonePaymentHelper();
    MockStonePaymentHelperPlatform fakePlatform =
        MockStonePaymentHelperPlatform();
    StonePaymentHelperPlatform.instance = fakePlatform;

    expect(await stonePaymentHelperPlugin.getPlatformVersion(), '42');
  });
}
