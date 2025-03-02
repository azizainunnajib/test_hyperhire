import 'package:flutter/material.dart';
import 'package:test_hyperhire/ui/common/app_colors.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 1, left: 7, right: 7, bottom: 1),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: kcTextFooterColor),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: SizedBox(
        height: 20,
        child: DropdownButton<String>(
          value: "KOR",
          icon: const Icon(
            Icons.arrow_drop_down_sharp,
            color: kcTextFooterColor,
          ),
          iconSize: 12,
          style: const TextStyle(
              color: kcTextFooterColor,
              fontWeight: FontWeight.w400,
              fontSize: 10,
              fontFamily: "NotoSansKR"),
          onChanged: (String? value) {},
          items: ["KOR", "ENG"].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text('$value   '),
            );
          }).toList(),
        ),
      ),
    );
  }
}
