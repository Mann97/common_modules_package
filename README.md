<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

Modularisation

Modular programming is a software design technique to separate functionality into independent, interchangeable module, so that each contains everything necessary to execute a specific functionality.

How to use :

First, we need to get the git url for this repo and then we will add this url to our pubspec.yaml file.

like this,

  common_modules_package:
    git:
      url: https://github.com/Mann97/common_modules_package.git
      
After adding this to our yaml file we can directly access all those functionalities which is available in the repo.

  //CommonInputFormField(
  // textEditingController: TextEditingController(),
  // // validator: validateText,
  // validator: (value) {
  // if (validateText(value) == null) {
  // return null;
  // } else {
  // return 'Key_enterValidRegion';
  // }
  // },
  // )
  
  Note : For import we can use 
  
  this -> import 'package:common_modules_package/common_modules_package.dart';
  
  instead of
  
  this -> import 'package:common_modules_package/custom_textfield.dart'; 

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
