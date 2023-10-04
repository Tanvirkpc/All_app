import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
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
                company: "Phone",
                icon: Icons.phone,
                role: "01953363394",


              ),
              _buildExperienceTile(
                company: "Email",
                icon: Icons.mail,
                role: "islam15-3949@diu.edu.bd",

              ),
              _buildExperienceTile(
                company: "Facebook",
                icon: Icons.facebook,
                role: "Thahidul Islam Tanvir",
              ),
              _buildExperienceTile(
                company: "Linkedin",
                icon: Icons.link,

                role: "S.M.Thahidul Islam Tanvir",
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
          SizedBox(height: 8), // Add spacing between role/years and about

        ],
      ),
    );
  }
}

