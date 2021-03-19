import 'dart:io';

import 'package:collection/collection.dart';
import 'package:tdlib/src/class.dart';
import 'package:tdlib/src/group.dart';
import 'package:tdlib/src/string_extensions.dart';
import 'package:tdlib/src/variable.dart';
import 'package:tdlib/src/variable_type.dart';

class Parser {
  final sectionRegx = RegExp(r'---(\w+)---');
  final classRegx = RegExp(r'^//@class (\w+) @description (.*)');
  final docsRegx =
      RegExp(r'//((-)|@)(description)?([\w -.,:;={}\?\/\(\)"]+)(@?)(.*)?');
  final fieldsRegx = RegExp(r'^(\w+) (.*)?= (\w+);$');

  List<Class> parse() {
    String schemePath = 'data/td_api.tl';
    var readAsLinesSync = File(schemePath).readAsLinesSync();

    List<Class> classes = <Class>[];
    final List<String> variablesDescriptions = <String>[];

    String classDescription = '';

    String section = 'types';

    for (String line in readAsLinesSync.skip(13)) {
      if (sectionRegx.hasMatch(line)) {
        section = sectionRegx.firstMatch(line)!.group(1)!;
        continue;
      }

      if (classRegx.hasMatch(line)) {
        final RegExpMatch classData = classRegx.firstMatch(line)!;
        final String className = classData.group(1)!;
        final String classDescription = classData.group(2)!;
        // _objects.add(TlObject(className!, classDes!, 'classes'));
        // continue;

        classes.add(Class(
            constructor: className.toConstructor(),
            group: fixSection('classes'),
            parent: 'TdObject',
            name: className,
            description: classDescription,
            variables: []));

        // print(className);
        continue;
      }

      // check documentation line.
      if (docsRegx.hasMatch(line)) {
        final docData = docsRegx.firstMatch(line);

        // if line start with '//-', this line is continuation of last line.
        final continuation = (docData!.group(2) == null) ? false : true;

        // starting with '//@description' determines a description line.
        final isDescription = docData.group(3) == 'description' ? true : false;

        // rest of information from this line, after description state.
        final docs = docData.group(4)!.trim();

        // variables description start with '@VARIABLE_NAME', @ is a sign of extra descriptions.
        final hasExtra = docData.group(5) == '@' ? true : false;

        // rest of information from this line, after sign of extra descriptions.
        final extraData = docData.group(6);

        if (isDescription) {
          classDescription = docs;
        } else if (continuation) {
          // if this line is continuation of last line, must be added to last variable description or class description
          // always class description is the first thing that defined. so if there are variables information so class description is finished.
          if (variablesDescriptions.isNotEmpty) {
            variablesDescriptions[variablesDescriptions.length - 1] +=
                '. $docs';
          } else {
            classDescription += '. $docs';
          }
        } else {
          variablesDescriptions.add(docs);
        }
        if (hasExtra) {
          // where the '@' is the variables descriptions sign, splitting extra information by this sign separates descriptions.
          variablesDescriptions.addAll(extraData!.split('@'));
        }
        continue;
      }

      // check for the last line of
      if (fieldsRegx.hasMatch(line)) {
        final classData = fieldsRegx.firstMatch(line);

        String resolveParentType(
            Group group, String className, String classType) {
          if (group == Group.Functions) {
            return 'TdFunction';
          }
          if (group == Group.Classes) {
            return 'TdObject';
          }
          if (className.toLowerCase() == classType.toLowerCase()) {
            return 'TdObject';
          }
          return classType;
        }

        final String className = classData!.group(1)!;
        final classArgs = classData.group(2);
        var group = fixSection(section);
        final String parent =
            resolveParentType(group, className, classData.group(3)!);
        final Map<String, String> args = (classArgs == null)
            ? <String, String>{}
            // ignore: prefer_for_elements_to_map_fromIterable
            : Map<String, String>.fromIterable(classArgs.trim().split(' '),
                key: (var arg) => arg.split(':')[0],
                value: (var arg) => arg.split(':')[1]);
        var variables = args.keys.map((String key) {
          String? description = variablesDescriptions.firstWhereOrNull(
              (element) =>
                  element.startsWith(key) || element.startsWith('param_$key'));
          return Variable(
              isNullable: (description?.contains('or null') ?? false) ||
                  (description?.contains('may be null') ?? false),
              name: key,
              type: VariableType.fromRawType(rawType: args[key]!),
              description: description);
        }).toList();
        var name = className.upperFirstChar();
        var classInfo = Class(
            group: group,
            constructor: name.toConstructor(),
            name: name == 'Error' ? 'TdError' : name,
            parent: parent,
            // type: classReturnType == name
            //     ? section == 'functions'
            //         ? 'TdFunction'
            //         : 'TdObject'
            //     : classReturnType,
            variables: variables,
            description: classDescription);

        classDescription = '';
        variablesDescriptions.clear();
        classes.add(classInfo);
      }
    }
    return classes;
  }

  Group fixSection(String value) {
    if (value == 'types') {
      return Group.Objects;
    } else if (value == 'classes') {
      return Group.Classes;
    }

    return Group.Functions;
  }
}
