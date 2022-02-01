import 'package:logger/logger.dart';
export 'package:flutter/material.dart';
export 'package:cupertino_icons/cupertino_icons.dart';


/// logging console
Logger log = Logger();

/// Formatting
extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
}