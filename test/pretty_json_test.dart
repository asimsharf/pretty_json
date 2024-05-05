import 'package:flutter_test/flutter_test.dart';
import 'package:pretty_json/pretty_json.dart';

void main() {
  test('adds one to input values', () {
    const complexJsonString = '''
    {
      "name": "Asim Abdelgadir",
      "age": 31,
      "cars": {
        "car1": {
          "model": "BMW",
          "year": 2018
        },
        "car2": {
          "model": "Tesla",
          "year": 2021
        }
      }
    }
    ''';

    final complexJsonMap = {
      "name": "Asim Abdelgadir",
      "age": 30,
      "cars": {
        "car1": {"model": "BMW", "year": 2018},
        "car2": {"model": "Tesla", "year": 2021}
      }
    };

    ThePrettyJson.prettyPrintJson(complexJsonString);
    ThePrettyJson.prettyPrintJsonMap(complexJsonMap);
    ThePrettyJson.prettyPrintJsonDynamic(complexJsonString);
  });
}
