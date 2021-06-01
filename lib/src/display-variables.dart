import 'dart:io';

import 'package:yaml/yaml.dart';

void main(){
  var root_url = loadYaml(File('config/config.yaml').readAsStringSync());
  print(root_url);
}