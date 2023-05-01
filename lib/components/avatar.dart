import 'package:flutter/material.dart';
import 'package:voll_med/styles/colors.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 64,
      height: 64,
      child: CircleAvatar(
        backgroundColor: cinza2,
      ),
    );
  }
}
