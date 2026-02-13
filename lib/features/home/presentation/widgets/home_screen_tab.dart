import 'package:flutter/material.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(color: Colors.orange)),
        Expanded(child: Container(color: Colors.purple)),
      ],
    );
  }
}
