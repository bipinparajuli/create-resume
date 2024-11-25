import 'package:create_resume/screens/main_screens/resume_details/contact/contact_screen.dart';
import 'package:create_resume/screens/main_screens/resume_details/education/education_screen.dart';
import 'package:create_resume/screens/main_screens/resume_details/experience/expirence_screen.dart';
import 'package:create_resume/screens/main_screens/resume_details/others/others_screen.dart';
import 'package:flutter/material.dart';

class CreateCvScreen extends StatefulWidget {
  static const routeName = '/create-cv';

  @override
  _CreateCvScreenState createState() => _CreateCvScreenState();
}

class _CreateCvScreenState extends State<CreateCvScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Create new CV",
          style: TextStyle(color: Colors.black87),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black54,
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.orange),
            onPressed: () {
              // Handle info button action
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0), // Adjust height if needed

          child: Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Colors.orange,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(icon: Icon(Icons.contact_page), text: "Contact Info"),
                Tab(icon: Icon(Icons.work), text: "Work Experiences"),
                Tab(icon: Icon(Icons.school), text: "Education Details"),
                Tab(icon: Icon(Icons.more_horiz), text: "Other Info"),
                // Tab(icon: Icon(Icons.download), text: "Save/Download"),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ContactInformationScreen(tabController: _tabController),
                WorkExperienceScreen(tabController: _tabController),
                EducationDetailsScreen(tabController: _tabController),
                OtherInformationScreen(tabController: _tabController),
                // SaveDownloadScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
