import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      radius: const Radius.circular(10),
      padding: const EdgeInsets.all(2),
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 116, 251, 222),
          Color.fromARGB(255, 60, 65, 191)
        ],
        begin: Alignment.centerLeft,
        end: Alignment.bottomRight,
      ),
      strokeWidth: 4,
      child: SearchBar(
        constraints: BoxConstraints(minHeight: 36, maxHeight: 36),
        elevation: WidgetStateProperty.all<double?>(0),
        backgroundColor: WidgetStateProperty.all(Colors.white),
        hintText: "검색어를 입력하세요",
        trailing: const [Icon(Icons.search)],
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
