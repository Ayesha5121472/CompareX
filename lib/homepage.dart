import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.teal.shade300,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage('assets/product.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/map_background.png'), // Add your map image here
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_pin, color: Colors.blue.shade300),
                            SizedBox(width: 5),
                            Text(
                              'Location Here',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.map, color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: 'Search Product',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Search Product', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade300,
                          minimumSize: Size(double.infinity, 50),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.qr_code_scanner, color: Colors.white),
                        label: Text('Scan Product', style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal.shade300,
                          minimumSize: Size(double.infinity, 50),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location Services',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Switch(value: true, onChanged: (val) {}),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '1. Grow Price Comparison',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  'Grocery price grocery is good, find the prices of essentials.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  'Compare items and view price comparisons to choose the best.',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}