#ifndef FLUTTER_PLUGIN_PRETTY_BUTTON_PLUGIN_H_
#define FLUTTER_PLUGIN_PRETTY_BUTTON_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace pretty_button {

class PrettyButtonPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PrettyButtonPlugin();

  virtual ~PrettyButtonPlugin();

  // Disallow copy and assign.
  PrettyButtonPlugin(const PrettyButtonPlugin&) = delete;
  PrettyButtonPlugin& operator=(const PrettyButtonPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace pretty_button

#endif  // FLUTTER_PLUGIN_PRETTY_BUTTON_PLUGIN_H_
