import 'package:flutter/material.dart';
import 'package:flutter_responsive_helper/flutter_responsive_helper.dart';

class ResponsiveExample extends StatefulWidget {
  const ResponsiveExample({super.key});

  @override
  State<ResponsiveExample> createState() => _ResponsiveExampleState();
}

class _ResponsiveExampleState extends State<ResponsiveExample> {
  @override
  void initState() {
    // TODO: implement initState
    initializeSize(396, 812);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            GestureDetector(
              onTap: () {
                print(800.h(context));
                print(MediaQuery.of(context).size.height);
              },
              child: Container(
                width: 390.w(context),
                height: 800.h(context),
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
