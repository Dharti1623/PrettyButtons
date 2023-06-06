#include "include/pretty_button/pretty_button_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pretty_button_plugin.h"

void PrettyButtonPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pretty_button::PrettyButtonPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
