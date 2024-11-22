import 'package:create_resume/screens/main_screens/resume_details/others/others_screen.dart';
import 'package:flutter/material.dart';

class EducationDetailsScreen extends StatelessWidget {
  static const routeName = '/education-details';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "School Name",
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
                              color: Colors.orange,
                              width: 2.0), // Focused border
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
                              color: Colors.orange,
                              width: 2.0), // Focused border
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Degree",
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.orange, width: 2.0), // Focused border
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Subject",
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
                  hintText: "Add additional details...",
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
                  Navigator.pushNamed(
                      context, OtherInformationScreen.routeName);
                },
                child: const Text("Next Step"),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
