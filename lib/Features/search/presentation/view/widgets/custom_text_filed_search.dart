import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextFiled extends StatelessWidget {
  const CustomSearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: buildBorderTextFiled(),
            hintText: 'Search',
            border: buildBorderTextFiled(),
            suffixIcon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            )),
      ),
    );
  }

  OutlineInputBorder buildBorderTextFiled() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
    );
  }
}
