import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pretty_button_method_channel.dart';

abstract class PrettyButtonPlatform extends PlatformInterface {
  /// Constructs a PrettyButtonPlatform.
  PrettyButtonPlatform() : super(token: _token);

  static final Object _token = Object();

  static PrettyButtonPlatform _instance = MethodChannelPrettyButton();

  /// The default instance of [PrettyButtonPlatform] to use.
  ///
  /// Defaults to [MethodChannelPrettyButton].
  static PrettyButtonPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PrettyButtonPlatform] when
  /// they register themselves.
  static set instance(PrettyButtonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
