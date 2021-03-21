import 'package:tdlib/src/variable.dart';

import 'group.dart';

class Class {
  final String name;
  final String description;
  final String parent;
  final String? returnType;
  final Group group;
  final List<Variable> variables;
  final String constructor;

  Class({
    required this.name,
    required this.parent,
    required this.group,
    required this.returnType,
    required this.constructor,
    required this.variables,
    required this.description,
  });
}