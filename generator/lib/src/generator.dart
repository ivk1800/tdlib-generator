import 'dart:io';

import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:tdlib/src/class.dart';
import 'package:tdlib/src/group.dart';
import 'package:tdlib/src/string_extensions.dart';
import 'package:tdlib/src/variable.dart';
import 'package:tdlib/src/variable_type.dart';

class Generator {
  static String tdApiDir = '../lib/src/tdapi';
  final File tdApiFile = File('$tdApiDir/tdapi.dart');
  final File copyExtensionsFile = File('$tdApiDir/copy_extensions.dart');
  final Directory functionsDir = Directory("$tdApiDir/functions");
  final Directory objectsDir = Directory("$tdApiDir/objects");

  final List<Class> classes;

  Generator(this.classes);

  void generate() {
    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    for (Class c in classes) {
      final cb.DartEmitter emitter = cb.DartEmitter();
      final cb.LibraryBuilder target = cb.LibraryBuilder();

      target.body.add(_createClass(c));

      final file = File('${getPathOf(c)}/${snakeCase(c.name)}.dart');
      file.create();
      file.writeAsString(
          DartFormatter().format('${target.build().accept(emitter)}'),
          mode: FileMode.write);
    }

    List<String> c = <String>[
      "export 'function.dart';",
      "export 'object.dart';",
      "export 'convertor.dart';",
      "export 'copy_extensions.dart';",
      "import 'package:tdlib/td_api.dart';"
    ];

    for (Class value in classes) {
      c.add(
          'export \'${getGroupPath(value.group)}/${snakeCase(value.name)}.dart\';');
    }
    c.add('');
    c.add(
        'final Map<String, TdObject? Function(Map<String, dynamic>)> allObjects = {');

    for (Class value in classes) {
      if (value.group != Group.Functions) {
        c.add("    '${value.constructor}': (d) => ${value.name}.fromJson(d),");
      }
    }

    c.add('};');

    if (tdApiFile.existsSync()) tdApiFile.deleteSync(recursive: true);
    tdApiFile.createSync(recursive: true);

    final objFile = File(tdApiFile.path);
    objFile.create();
    objFile.writeAsString(c.join('\n'), mode: FileMode.write);

    if (copyExtensionsFile.existsSync())
      copyExtensionsFile.deleteSync(recursive: true);
    copyExtensionsFile.createSync(recursive: true);

    copyExtensionsFile.create();

    final List<String> extenisonsLines = <String>["import 'tdapi.dart';"];

    for (Class value in classes) {
      if (value.variables.isEmpty) {
        continue;
      }

      var extension = cb.Extension((extensionBuilder) {
        extensionBuilder.name = '${value.name}CopyExtension';
        extensionBuilder.on = cb.TypeReference((b) => b.symbol = value.name);
        extensionBuilder.methods.add(cb.Method((methodBuilder) {
          methodBuilder.name = "copy";
          methodBuilder.returns = cb.refer(value.name);
          methodBuilder.optionalParameters
              .addAll(value.variables.map((Variable v) {
            return cb.Parameter((parameterBuilder) {
              parameterBuilder.named = true;
              parameterBuilder.name = v.name.toVariableName();
              parameterBuilder.type = cb.Reference('${v.type}?');
            });
          }));
          methodBuilder.lambda = true;
          methodBuilder.body = cb.Block((b) {
            b.statements.add(cb.ToCodeExpression(cb.refer(value.name).newInstance(
                <cb.Expression>[],
                Map.fromEntries(value.variables.map((e) => MapEntry(
                    e.name.toVariableName(),
                    cb.refer(
                        '${e.name.toVariableName()} ?? this.${e.name.toVariableName()}')))))));
          });
        }));
      });
      extenisonsLines
          .add(DartFormatter().format('${extension.accept(cb.DartEmitter())}'));
    }

    copyExtensionsFile.writeAsString(extenisonsLines.join('\n'),
        mode: FileMode.write);
  }

  cb.Class _createClass(Class c) {
    return cb.Class((b) {
      final bool canBeReturnByFunction = _canBeReturnByFunction(c.name);
      b
        ..docs.add("import '../tdapi.dart';")
        ..docs.addAll(c.description.resolveDoc())
        ..name = c.name
        ..extend = cb.refer(c.parent);
      b.abstract = c.group == Group.Classes;

      b.constructors.add(cb.Constructor((constructorBuilder) {
        constructorBuilder.constant =
            c.variables.isEmpty && c.group != Group.Functions;
        constructorBuilder.optionalParameters
            .addAll(c.variables.map((Variable v) {
          return cb.Parameter((parameterBuilder) {
            parameterBuilder.required = !v.isNullable;
            parameterBuilder.named = true;
            parameterBuilder.name = v.name.toVariableName();
            parameterBuilder.toThis = true;

            if (v.isNullable) {
              parameterBuilder.type =
                  cb.Reference('${v.type} ${v.isNullable ? '?' : ''}');
            }
          });
        }));

        if (canBeReturnByFunction) {
          constructorBuilder.optionalParameters
              .add(cb.Parameter((parameterBuilder) {
            parameterBuilder.named = true;
            parameterBuilder.name = 'extra';
            parameterBuilder.toThis = true;
          }));
        }
      }));

      if (c.group != Group.Functions) {
        b.methods.add(_createFromJsonStaticMethod(c, classes));
      }

      b.fields.addAll(c.variables.map((Variable v) {
        return cb.Field((fieldBuilder) {
          fieldBuilder.name = v.name.toVariableName();
          fieldBuilder.type =
              cb.Reference('${v.type} ${v.isNullable ? '?' : ''}');
          fieldBuilder.modifier = cb.FieldModifier.final$;
          fieldBuilder.docs.addAll(v.resolveFieldDoc());
        });
      }));

      if (c.group == Group.Functions || canBeReturnByFunction) {
        b.fields.add(cb.Field((fieldBuilder) {
          fieldBuilder.name = 'extra';
          fieldBuilder.docs.add('/// callback sign');
          fieldBuilder.type = cb.Reference('dynamic?');
          if (canBeReturnByFunction) {
            fieldBuilder.modifier = cb.FieldModifier.final$;
          }
        }));
      }

      b.fields.add(cb.Field((fieldBuilder) {
        fieldBuilder.static = true;
        fieldBuilder.modifier = cb.FieldModifier.constant;
        fieldBuilder.name = 'CONSTRUCTOR';
        fieldBuilder.type = cb.Reference('String');
        fieldBuilder.assignment = cb.Code("'${c.constructor}'");
      }));

      b.methods.add(cb.Method((methodBuilder) {
        methodBuilder.name = 'getConstructor';
        methodBuilder.returns = cb.Reference('String');
        methodBuilder.lambda = true;
        methodBuilder.annotations.add(cb.Reference('override'));
        methodBuilder.body = cb.Code('CONSTRUCTOR');
      }));

      if (c.group != Group.Classes) {
        b.methods.add(cb.Method((methodBuilder) {
          methodBuilder.name = 'toJson';
          methodBuilder.returns = cb.TypeReference((b) => b
            ..symbol = 'Map'
            ..types.addAll([cb.refer("String"), cb.refer("dynamic")]));
          methodBuilder.lambda = true;
          methodBuilder.annotations.add(cb.Reference('override'));

          final Map<String, dynamic> values = Map.fromEntries(c.variables.map(
              (e) => MapEntry(
                  e.name, cb.refer('this.${e.name.toVariableName()}'))));
          methodBuilder.body = cb.ToCodeExpression(
              cb.literalMap(values..["@type"] = cb.refer('CONSTRUCTOR')));

          if (c.group == Group.Functions || canBeReturnByFunction) {
            values['@extra'] = cb.refer('this.extra');
          }
        }));
      }
    });
  }

  cb.Method _createFromJsonStaticMethod(Class value, List<Class> classes) {
    return cb.Method((methodBuilder) {
      methodBuilder.name = 'fromJson';
      methodBuilder.static = true;
      methodBuilder.requiredParameters.add(cb.Parameter((parameterBuilder) {
        parameterBuilder.name = '? json';
        parameterBuilder.type = cb.TypeReference((b) => b
          ..symbol = 'Map'
          ..types.addAll([cb.refer("String"), cb.refer("dynamic")]));
      }));
      methodBuilder.returns = cb.Reference('${value.name}?');

      if (value.group == Group.Classes) {
        methodBuilder.docs.add('/// Inherited by:');
        methodBuilder.docs.add(classes
            .where((c) => c.parent == value.name)
            .map((e) => '/// [${e.name}]')
            .join('\n'));
      }
      methodBuilder.body = cb.Block((b) {
        b.statements.addAll([
          cb.Code("""
            if (json == null) {
              return null;
            }
            
            """)
        ]);

        if (value.group == Group.Classes) {
          b.statements.addAll([
            cb.Code("""
            switch(json["@type"]) {
            """)
          ]);
          b.statements.addAll(classes
              .where((c) => c.parent == value.name)
              .map((e) => cb.Code("""
      case ${e.name}.CONSTRUCTOR:
        return ${e.name}.fromJson(json);""")));
          b.statements.addAll([
            cb.Code("""
            default:
              return null;
              }""")
          ]);
        } else if (value.group == Group.Objects) {
          var initializers = Map.fromEntries(value.variables.map((e) => MapEntry(
                    e.name.toVariableName(),
                    cb.refer(_createInitializer(e)))));

          var canBeReturnByFunction = _canBeReturnByFunction(value.name);
          if (canBeReturnByFunction) {
            initializers['extra'] = cb.refer("json['@extra']");
          }

          b.statements.addAll([
            cb.Code("return ${value.variables.isEmpty && !canBeReturnByFunction ? 'const' : ''}"),
            cb.ToCodeExpression(cb.refer(value.name).newInstance(
                <cb.Expression>[],
                initializers)),
            cb.Code(';')
          ]);
        }
      });
    });
  }

  bool _canBeReturnByFunction(String className) {
    if (className == "TdError") {
      return true;
    }

    return classes
        .where((element) => element.group == Group.Functions)
        .any((element) {
      return element.returnType == className;
    });
  }

  String _createInitializer(Variable variable,
      [String? overrideJsonKey = null]) {
    if (variable.type.isDartType) {
      if (variable.type.rawType == "int64") {
        return "int.tryParse(json['${variable.name}']) ?? 0";
      }

      return "json['${variable.name}']";
    } else if (variable.type.isListType) {
      String genericType = variable.type.type.substring(
          variable.type.type.indexOf('<') + 1,
          variable.type.type.lastIndexOf('>'));

      Variable genericVariable = Variable(
          name: genericType,
          type: VariableType.fromRawType(rawType: genericType),
          description: "",
          isNullable: false);

      List<String> list = [
        "List<${genericType}>.from((json['${variable.name}}'] ?? []).map((item) => "
      ];

      list.add(_createInitializer(genericVariable, 'item'));
      list.add(").toList())");
      return list.join();
    }
    if (overrideJsonKey != null) {
      return "${variable.type}.fromJson($overrideJsonKey)";
    }
    return "${variable.type}.fromJson(json['${variable.name}'])${!variable.isNullable ? '!' : ''}";
  }

  String getPathOf(Class value) {
    if (value.group == Group.Functions) {
      return functionsDir.path;
    }
    return objectsDir.path;
  }

  String getGroupPath(Group group) {
    if (group == Group.Functions) {
      return "functions";
    }

    return "objects";
  }

  String snakeCase(String string) {
    string = string.replaceAllMapped(
        RegExp(r'(.)([A-Z][a-z]+)'),
        (Match match) => match
            .groups(List.generate(match.groupCount, (int index) => index + 1))
            .join('_'));
    string = string.replaceAllMapped(
        RegExp(r'([a-z0-9])([A-Z])'),
        (Match match) => match
            .groups(List.generate(match.groupCount, (int index) => index + 1))
            .join('_'));
    return string.toLowerCase();
  }
}

extension _StringExtension on String {
  String toVariableName() => this.camelCase().lowerFirstChar();

  List<String> resolveDoc() {
    List<String> lines = <String>[];

    var split = this.split(' ');

    String currentLine = '///';

    for (String word in split) {
      String tempLine = '$currentLine $word';
      if (tempLine.length > 78) {
        lines.add(currentLine);
        currentLine = '///';
      } else {
        currentLine = tempLine;
      }
    }
    if (currentLine != '///') {
      lines.add(currentLine);
    }
    return lines;
  }
}

extension _VariableExtension on Variable {
  List<String> resolveFieldDoc() {
    return description
            ?.replaceFirst(this.name, '[${this.name.toVariableName()}]')
            .resolveDoc() ??
        [];
  }
}
