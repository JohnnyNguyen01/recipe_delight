import 'package:flutter/foundation.dart';

enum ThumnbailSize {
  small,
  regular,
}

extension ThumnailSizeExtension on ThumnbailSize {
  String get uriQueryParameter {
    switch (this) {
      case ThumnbailSize.small:
        return '-${describeEnum(this)}.png';
      case ThumnbailSize.regular:
        return '.png';
    }
  }
}
