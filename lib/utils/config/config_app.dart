abstract class AppConfig {
  static const bool isRelease = false;
  static const String clientUrl = !isRelease ? 'http://localhost:3000/graphql' : '';
}
