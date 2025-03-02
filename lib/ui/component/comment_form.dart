import 'package:flutter/material.dart';

class CommentForm extends StatelessWidget {
  const CommentForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: '댓글 달기..',
        hintStyle: TextStyle(
          color: Color(0xFF616161),
          fontSize: 10,
          fontFamily: 'NotoSansKR',
          fontWeight: FontWeight.w400,
          letterSpacing: -0.55,
        ),
        prefixIcon: Image.asset(
          "assets/comment.png",
          width: 12,
          height: 12,
        ),
      ),
    );
  }
}
