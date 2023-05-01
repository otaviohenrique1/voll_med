import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 64,
        height: 64,
        color: Colors.white,
        child: const Placeholder(
          child: Center(
            child: Text("Avatar"),
          ),
        ),
      ),
    );
  }
}
