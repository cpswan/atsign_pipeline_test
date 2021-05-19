import 'dart:io';
import 'dart:io' show Platform;
import 'package:yaml/yaml.dart';

void main() {
  var pubspecConfig = loadYaml(File('pubspec.yaml').readAsStringSync());
  var version = pubspecConfig['version'];
  HttpServer.bind(InternetAddress.anyIPv4, 9000).then((server) {
    server.listen((HttpRequest request) {
      var dartVersion = Platform.version;
      request.response
          .write('Hello, Dart Programmer!! You are using dart $dartVersion');
      request.response.write('\napp version: $version');
      request.response.close();
    });
    print('Server Started');
  });
}
