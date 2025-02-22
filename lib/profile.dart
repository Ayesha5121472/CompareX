import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal.shade100, Colors.blue.shade300],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'ABC ---',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'abc@example.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text('Edit Profile'),
                onTap: () {
                  // Navigate to Edit Profile Page
                },
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  // Navigate to Change Password Page
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notifications'),
                onTap: () {
                  // Navigate to Notifications Page
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('Order History'),
                onTap: () {
                  // Navigate to Order History Page
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text('Help & Support'),
                onTap: () {
                  // Navigate to Help & Support Page
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  // Implement Logout Functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
