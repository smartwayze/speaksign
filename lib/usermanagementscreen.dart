import 'package:flutter/material.dart';

class LMSHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Adjusted height for rounded effect
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0), // Add space before title
            child: Text(
              "LMS",
              style: TextStyle(color: Colors.white), // LMS text color changed to white
            ),
          ),
          backgroundColor: Colors.purple, // Purple AppBar
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white), // Back button color changed to white
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.purple[100], // Lighter purple for the header
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.shade300,
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Icon(Icons.school, size: 60, color: Colors.purple),
                  SizedBox(height: 10),
                  Text(
                    "LEARNING MANAGEMENT SYSTEM",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple.shade800, // Darker purple for text
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Learn and review efficiently",
                    style: TextStyle(color: Colors.purple[600]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade400,
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text("Start Study", style: TextStyle(color: Colors.white)),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple.shade600,
                          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text("Start Review", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // List Items Section
            Expanded(
              child: ListView(
                children: [
                  buildListItem("Vocabulary I", "Continue your learning journey."),
                  buildListItem("Vocabulary II", "Continue your learning journey."),
                  buildListItem("Vocabulary III", "Continue your learning journey"),
                  buildListItem("Quiz", "Test your knowledge"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String title, String subtitle) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5, // Adding shadow for the card
      child: ListTile(
        leading: Icon(
          Icons.circle,
          color: Colors.purple.shade600, // Purple color for icons
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade700, // Darker purple for title text
          ),
        ),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.purple.shade500)),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple.shade400),
        onTap: () {
          // Handle navigation or action
        },
      ),
    );
  }
}
