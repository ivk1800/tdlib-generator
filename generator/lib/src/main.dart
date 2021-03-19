import 'package:tdlib/src/class.dart';
import 'package:tdlib/src/parser.dart';

import 'generator.dart';

void main() {
  List<Class> classes = Parser().parse();

  Generator().generate(classes);
}
