import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        title: Text('Admin Panel'),
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
            _buildAdminTile(context, 'Manage Products', Icons.shopping_cart, () {
              // Navigate to product management page
            }),
            _buildAdminTile(context, 'Manage Users', Icons.person, () {
              // Navigate to user management page
            }),
            _buildAdminTile(context, 'Manage Prices', Icons.attach_money, () {
              // Navigate to price management page
            }),
            _buildAdminTile(context, 'View Reports', Icons.bar_chart, () {
              // Navigate to reports page
            }),
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
        trailing: Icon(Icons.arrow_forward),
        onTap: onTap,
      ),
    );
  }
}
