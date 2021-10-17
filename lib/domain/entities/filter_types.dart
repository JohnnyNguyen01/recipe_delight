import 'package:flutter/foundation.dart';

enum FilterType {
  area,
  category,
  ingredient,
}

extension FilterTypeExtension on FilterType {
  String get name => describeEnum(this);
  String get queryCode => name[0];
}
