import 'package:flutter_test/flutter_test.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';
import 'package:native_dio_adapter/native_dio_adapter_platform_interface.dart';
import 'package:native_dio_adapter/native_dio_adapter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNativeDioAdapterPlatform
    with MockPlatformInterfaceMixin
    implements NativeDioAdapterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NativeDioAdapterPlatform initialPlatform = NativeDioAdapterPlatform.instance;

  test('$MethodChannelNativeDioAdapter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNativeDioAdapter>());
  });

  test('getPlatformVersion', () async {
    NativeDioAdapter nativeDioAdapterPlugin = NativeDioAdapter();
    MockNativeDioAdapterPlatform fakePlatform = MockNativeDioAdapterPlatform();
    NativeDioAdapterPlatform.instance = fakePlatform;

    expect(await nativeDioAdapterPlugin.getPlatformVersion(), '42');
  });
}
