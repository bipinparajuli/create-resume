import 'package:flutter/material.dart';

class OtherInformationScreen extends StatelessWidget {
  static const routeName = '/other-information';

  final TabController tabController;

  OtherInformationScreen({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Add Language Information logic
              },
              child: const Text("Add Language"),
            ),
            ElevatedButton(
              onPressed: () {
                // Add Skills Information logic
              },
              child: const Text("Add Skills"),
            ),
            ElevatedButton(
              onPressed: () {
                // Add References logic
              },
              child: const Text("Add References"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                tabController.animateTo(4);
              },
              child: const Text("Download CV"),
            ),
          ],
        ),
      ),
    );
  }
}
