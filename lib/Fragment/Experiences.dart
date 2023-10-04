import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Experiences"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExperienceTile(
                company: "ABC Company",
                icon: Icons.work,
                role: "Software Engineer",
                years: "2020 - Present",

              ),
              _buildExperienceTile(
                company: "IT  Company",
                icon: Icons.work,
                role: "Android Developer",
                years: "2016 - 2018",

              ),
              _buildExperienceTile(
                company: "xy Company",
                icon: Icons.work,
                role: "Junior Developer",
                years: "2018-2020",

              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String company,
    required IconData icon,
    required String role,
    required String years,

  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue, // Change the color to teal
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        company,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(role, style: TextStyle(fontSize: 18, color: Colors.white70)),
          Text(
            years,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 8), // Add spacing between role/years and about

        ],
      ),
    );
  }
}
