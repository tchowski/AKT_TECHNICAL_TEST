import 'package:flutter/foundation.dart';

abstract class AppConfig {
  static const bool isRelease = kReleaseMode;
  static const String clientUrl = !isRelease ? 'http://localhost:8080/' : '';
}
