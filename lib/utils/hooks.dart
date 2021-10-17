import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Hook that returns the current app theme
ThemeData useTheme() => Theme.of(useContext());

/// Hook that returns the the screen's [Size]
Size useScreenSize() => MediaQuery.of(useContext()).size;
