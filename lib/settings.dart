import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;
  bool notificationsEnabled = true;
  bool autoUpdates = true;
  String selectedCurrency = 'USD';
  String selectedCategory = 'Electronics';
  String selectedLanguage = 'English';
  double minPrice = 0;
  double maxPrice = 1000;

  final List<String> currencies = ['USD', 'EUR', 'INR', 'GBP', 'PKR'];
  final List<String> categories = ['Electronics', 'Groceries', 'Clothing', 'Furniture'];
  final List<String> languages = ['English', 'Urdu', 'Hindi', 'Spanish'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: const Text('Settings'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.blue.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Dark Mode
              ListTile(
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      isDarkMode = value;
                    });
                  },
                ),
              ),

              // Notifications
              ListTile(
                title: const Text('Enable Notifications'),
                trailing: Switch(
                  value: notificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      notificationsEnabled = value;
                    });
                  },
                ),
              ),

              // Preferred Currency
              ListTile(
                title: const Text('Preferred Currency'),
                subtitle: Text(selectedCurrency),
                trailing: DropdownButton<String>(
                  value: selectedCurrency,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCurrency = newValue!;
                    });
                  },
                  items: currencies.map((currency) {
                    return DropdownMenuItem(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                ),
              ),

              // Default Comparison Category
              ListTile(
                title: const Text('Default Comparison Category'),
                subtitle: Text(selectedCategory),
                trailing: DropdownButton<String>(
                  value: selectedCategory,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                    });
                  },
                  items: categories.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                ),
              ),

              // Language Selection
              ListTile(
                title: const Text('App Language'),
                subtitle: Text(selectedLanguage),
                trailing: DropdownButton<String>(
                  value: selectedLanguage,
                  onChanged: (newValue) {
                    setState(() {
                      selectedLanguage = newValue!;
                    });
                  },
                  items: languages.map((language) {
                    return DropdownMenuItem(
                      value: language,
                      child: Text(language),
                    );
                  }).toList(),
                ),
              ),

              // Price Range Preference
              const Text('Set Price Range', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Min Price'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          minPrice = double.tryParse(value) ?? 0;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Max Price'),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(() {
                          maxPrice = double.tryParse(value) ?? 1000;
                        });
                      },
                    ),
                  ),
                ],
              ),

              // Auto-Updates
              ListTile(
                title: const Text('Enable Auto-Updates'),
                trailing: Switch(
                  value: autoUpdates,
                  onChanged: (value) {
                    setState(() {
                      autoUpdates = value;
                    });
                  },
                ),
              ),

              // Clear Cache Button
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Cache Cleared!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: const Text('Clear Cache', style: TextStyle(color: Colors.white)),
                ),
              ),

              // Feedback & Support
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Redirecting to Feedback Page...')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Send Feedback', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
