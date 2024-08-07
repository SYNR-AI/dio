import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'native_dio_adapter_platform_interface.dart';

/// An implementation of [NativeDioAdapterPlatform] that uses method channels.
class MethodChannelNativeDioAdapter extends NativeDioAdapterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('native_dio_adapter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
