import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 103.07,
        height: 24,
        color: Colors.white,
        child: const Placeholder(
          child: Center(
            child: Text("Logo"),
          ),
        ),
      ),
    );
  }
}
