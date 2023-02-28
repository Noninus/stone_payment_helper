import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stone_payment_helper/stone_payment_helper_method_channel.dart';

void main() {
  MethodChannelStonePaymentHelper platform = MethodChannelStonePaymentHelper();
  const MethodChannel channel = MethodChannel('stone_payment_helper');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
