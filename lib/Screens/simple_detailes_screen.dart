import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/simple_container.dart';

class SimpleDetailesScreen extends StatelessWidget {
  final String mainTitle;
  final String title;
  final List<Item> items;

  SimpleDetailesScreen({
    super.key,
    required this.mainTitle,
    required this.title, required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: mainTitle),
      body: SimpleContainer(title: title, items: items),
    );
  }
}
