import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the HomePage file
import 'settings.dart'; // Import the SettingsPage file
import 'profile.dart'; // Import the ProfilePage file

class AdminPanel extends StatelessWidget {
  const AdminPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        title: const Text('Admin Panel'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal.shade200,
              ),
              child: const Text(
                'Admin Menu',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            _buildDrawerTile(
              context,
              'Home',
              Icons.home,
                  () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              ),
            ),
            _buildDrawerTile(
              context,
              'Settings',
              Icons.settings,
                  () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to SettingsPage
              ),
            ),
            _buildDrawerTile(
              context,
              'Profile',
              Icons.person,
                  () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()), // Navigate to ProfilePage
              ),
            ),
            _buildDrawerTile(context, 'Logout', Icons.logout, () {}),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            _buildAdminTile(context, 'Manage Products', Icons.shopping_cart, () {}),
            _buildAdminTile(context, 'Manage Users', Icons.person, () {}),
            _buildAdminTile(context, 'Manage Prices', Icons.attach_money, () {}),
            _buildAdminTile(context, 'View Reports', Icons.bar_chart, () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildAdminTile(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }

  Widget _buildDrawerTile(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context); // Close the drawer
        onTap(); // Execute the function passed
      },
    );
  }
}
