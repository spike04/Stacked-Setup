# Stacked Setup

A Standard Framework Design Pattern for a single unified framework using Stacked and Firebase and more.

## Getting Started

Repo for Flutter Framework, the series from [FilledStacks](https://www.youtube.com/channel/UC2d0BYlqQCdF9lJfydl_02Q) Channel regarding Creating a project called [**BoxtOut** Project a Food Delivery Service](https://www.youtube.com/watch?v=8nVnrdFFBWw&list=PLdTodMosi-BzqMe7fU9Bin3z14_hqNHRA).

## Used Technologies

- **Firebase** (_Note: Steps to Setup Firebase is in Documentation_)
  - **Firebase Core** - Manditory for Using Firebase
  - **Firebase Auth** - For Authentication
- **Stacked** (For: State Management, Navigation, Firebase Authentication and Dependency Inversion)
  - **Stacked** - For Main View-View Model Architecture
  - **Stacked Firebase Auth** - For Firebase Authentication
  - **Stacked Services** - For Services Like Navigation Service, Dialog Service, Snackbar Service, Bottomsheet Service


## Sample Snippets
```json
{
  "Freezed model": {
    "scope": "dart,flutter",
    "prefix": "frz",
    "body": [
      "@freezed",
      "abstract class ${1:${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}} with _$${1} {",
      "  factory ${1}({",
      "    @required ${2:String id},",
      "  }) = _${1};",
      "}"
    ],
    "description": "Freezed model"
  },
  "Freezed model Json": {
    "scope": "dart,flutter",
    "prefix": "frzjs",
    "body": [
      "@freezed",
      "abstract class ${1:${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}} with _$${1} {",
      "  factory ${1}({",
      "    @required ${2:String id},",
      "  }) = _${1};",
      "",
      "factory ${1}.fromJson(Map<String, dynamic> json) => ",
      "_$${1}FromJson(json);",
      "}"
    ],
    "description": "Freezed model with Json"
  },
  "Stacked View": {
    "scope": "dart,flutter",
    "prefix": "stkv",
    "body": [
      "import 'package:flutter/material.dart';",
      "import 'package:stacked/stacked.dart';",
      "",
      "class ${1} extends StatelessWidget {",
      " const ${1}({Key key}) : super(key: key);",
      "",
      " @override",
      " Widget build(BuildContext context) {",
      "   return ViewModelBuilder<${1}Model>.reactive(",
      "     builder: (context, model, child) => Scaffold(),",
      "     viewModelBuilder: () => ${1}Model(),",
      "   );",
      " }",
      "}"
    ],
    "description": "Stacked View"
  },
  "Stacked BaseViewModel": {
    "scope": "dart,flutter",
    "prefix": "stkbvm",
    "body": [
      "import 'package:stacked/stacked.dart';",
      "",
      "class ${1}Model extends BaseViewModel {}",
    ],
    "description": "Stacked BaseViewModel"
  },
  "Main Test Suite Setup": {
    "scope": "dart,flutter",
    "prefix": "testm",
    "body": [
      "import 'package:flutter_test/flutter_test.dart';",
      "",
      "void main() {",
      " group('${1:${TM_FILENAME_BASE/(.*)/${1:/pascalcase}/g}} -', (){",
      "",
      " });",
      "}"
    ],
    "description": "Main Test Suite Setup"
  },
  "Test Group Setup": {
    "scope": "dart,flutter",
    "prefix": "testg",
    "description": "Creates a Test group with a test",
    "body": [
      "group('${1} -', () {",
      " test('${2}', () {",
      "",
      " });",
      "});",
    ]
  },
  "Single Test Setup": {
    "scope": "dart,flutter",
    "prefix": "tests",
    "description": "Creates a single test",
    "body": [
      " test('${1}', () {",
      "",
      " });",
    ]
  },
}
```