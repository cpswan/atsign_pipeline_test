import 'dart:io';

import 'package:yaml/yaml.dart';

void main(){
  var root_url = loadYaml(File('config/config-base.yaml').readAsStringSync());
  print(root_url);
}