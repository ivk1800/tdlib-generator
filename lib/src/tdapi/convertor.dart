import 'dart:convert';

import 'tdapi.dart';

TdObject? convertToObject(String query) {
  if (query != null) {
    final newJson = json.decode(query);

    TdObject? Function(Map<String, dynamic>)? f = allObjects[newJson['@type']!];

    if (f != null) {
      return f(newJson);
    }
  } else {
    return null;
  }
}
