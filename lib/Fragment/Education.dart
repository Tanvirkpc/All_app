import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  const Education({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
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
                education: "University",
                icon: Icons.school_sharp,
                name: "Daffodil international university",
                department:"Student in Computer Science and Engineering",
                years: "2021 - Present",
                result: "I am still studying hence not yet graduated. I have managed to retain a CGPA of 3.81 in 8 semesters.",
              ),
              _buildExperienceTile(
                education: "HSC",
                icon: Icons.school_sharp,
                name: "Khulna Public College",
                department:"Student in Science Department",
                years: "2017 - 2019",
                result: "I have retained a GPA of 4.33 in HSC Examination.",
              ),
              _buildExperienceTile(
                education: "SSC",
                icon: Icons.school_sharp,
                name: "Khulna Public College",
                department:"Student in Science Department",
                years: "2015-2017",
                result: "I have retained a GPA of 4.82 in SSC Examination.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceTile({
    required String education,
    required IconData icon,
    required String name,
    required department,
    required String years,
    required String result,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 8),
      leading: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        education,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontSize: 18, color: Colors.white70)),
          Text(department, style: TextStyle(fontSize: 18, color: Colors.white)),
          Text(
            years,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 8), // Add spacing between role/years and about
          Text(
            result,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
