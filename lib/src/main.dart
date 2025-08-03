import 'dart:convert';
import 'dart:io';

import 'class.dart';
import 'generator.dart';
import 'parser.dart';

void main() {
  print('parse...');
  final List<Class> classes = Parser().parse();
  print('generate...');
  Generator(root: '../tdlib-dart', classes: classes).generate();
}
