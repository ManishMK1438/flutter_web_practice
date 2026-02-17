import 'package:flutter/material.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

const featureGridList = [
  FeatureGridEntity(
    icon: Icons.wifi,
    title: "WiFi-Based Attendance Tracking",
    desc:
        "Track employee presence using office WiFi, no additional hardware needed.",
  ),
  FeatureGridEntity(
    icon: Icons.person_2_rounded,
    title: "Leave and WFH management",
    desc:
        "Employees can apply for leaves or WFH, with a tiered approval process.",
  ),
  FeatureGridEntity(
    icon: Icons.calendar_month,
    title: "Attendance viewing",
    desc: "View attendance records for any custom period.",
  ),
  FeatureGridEntity(
    icon: Icons.settings,
    title: "Admin configuration",
    desc: "Manage company structure nd employee with ease.",
  ),
  FeatureGridEntity(
    icon: Icons.auto_graph_rounded,
    title: "Advance features (Enterprise)",
    desc: "HRMS integration, advance analytics and dedicated support",
  ),
];
