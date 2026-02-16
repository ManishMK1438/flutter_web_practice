import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/packages_exports.dart';

class FeatureGridEntity extends Equatable {
  final IconData icon;
  final String title;
  final String desc;
  const FeatureGridEntity({
    required this.icon,
    required this.title,
    required this.desc,
  });
  @override
  List<Object?> get props => [icon, title, desc];
}
