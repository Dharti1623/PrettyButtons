import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pretty_button_platform_interface.dart';

/// An implementation of [PrettyButtonPlatform] that uses method channels.
class MethodChannelPrettyButton extends PrettyButtonPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pretty_button');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
