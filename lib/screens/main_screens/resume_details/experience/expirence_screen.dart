import 'package:create_resume/screens/main_screens/resume_details/education/education_screen.dart';
import 'package:flutter/material.dart';

class WorkExperienceScreen extends StatelessWidget {
  static const routeName = '/work-experience';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Employer",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.orange, width: 2.0), // Focused border
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Start Date",
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 2.0), // Focused border
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "End Date",
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.orange, width: 2.0), // Focused border
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Job Title",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.orange, width: 2.0), // Focused border
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Location",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.orange, width: 2.0), // Focused border
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Description",
                hintText: "Describe your responsibilities...",
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.orange, width: 2.0), // Focused border
                ),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              onPressed: () {
                Navigator.pushNamed(context, EducationDetailsScreen.routeName);
              },
              child: const Text("Next Step"),
            ),
          ],
        ),
      ),
    )));
  }
}
