import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'native_dio_adapter_method_channel.dart';

abstract class NativeDioAdapterPlatform extends PlatformInterface {
  /// Constructs a NativeDioAdapterPlatform.
  NativeDioAdapterPlatform() : super(token: _token);

  static final Object _token = Object();

  static NativeDioAdapterPlatform _instance = MethodChannelNativeDioAdapter();

  /// The default instance of [NativeDioAdapterPlatform] to use.
  ///
  /// Defaults to [MethodChannelNativeDioAdapter].
  static NativeDioAdapterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NativeDioAdapterPlatform] when
  /// they register themselves.
  static set instance(NativeDioAdapterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
