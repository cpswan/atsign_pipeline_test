import 'dart:io';

import 'package:yaml/yaml.dart';

void main() {
  var configMap = loadYaml(File('config/config.yaml').readAsStringSync());
  var root_url = configMap['root_server']['url'];
  if (root_url == 'development.atsign.org') {
    print('Development Environment: development.atsign.org');
  }
  if (root_url == 'staging.atsign.org') {
    print('Staging Environment: staging.atsign.org');
  }
  if (root_url == 'production.atsign.org') {
    print('Production Environment: production.atsign.org');
  }
  print('version :' + configMap['version']);
}
