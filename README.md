# Pretty JSON

A Flutter package for pretty printing JSON with key coloring.

## Features

- Pretty print JSON strings with customizable indentation.
- Colorize JSON keys for better readability.

## Getting Started

To use this package, add `pretty_json` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  pretty_json: ^0.0.1
```

Then import the package in your Dart file.

```dart
import 'package:pretty_json/pretty_json.dart';
```

## Usage

Here's an example of how to use the ThePrettyJson class:

```dart
import 'package:pretty_json/pretty_json.dart';

void main() {
  const complexJsonString = '''
  {
    "name": "John",
    "age": 30,
    "cars": {
      "car1": {
        "model": "BMW",
        "year": 2018
      },
      "car2": {
        "model": "Audi",
        "year": 2016
      }
    }
  }
  ''';

  final complexJsonMap = {
    "name": "John",
    "age": 30,
    "cars": {
      "car1": {"model": "BMW", "year": 2018},
      "car2": {"model": "Audi", "year": 2016}
    }
  };

  ThePrettyJson.prettyPrintJson(complexJsonString);
  ThePrettyJson.prettyPrintJsonMap(complexJsonMap);
  ThePrettyJson.prettyPrintJsonDynamic(complexJsonString);
  ThePrettyJson.prettyPrintJsonDynamic(complexJsonMap);
}
```

## Output

The output of the above code will be with key colorization and indentation.

```dart
{
  "${name}": "John",
    "${age}": 30,
    "${cars}": {
      "${car1}": {
        "${model}": "BMW",
        "${year}": 2018
      },
      "${car2}": {
        "${model}": "Audi",
        "${year}": 2016
      }
    }
}
```

## Customization

You can customize the indentation and key color by passing the optional parameters to the `prettyPrintJson` method.

```dart
ThePrettyJson.prettyPrintJson(complexJsonString, indent: 4, keyColor: Colors.red);
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Author - [Asim Abdelgadir](asimsharf@gmail.com)
