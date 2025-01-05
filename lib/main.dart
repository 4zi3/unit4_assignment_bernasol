import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "Jaziel Clyde M. Bernasol",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              color: Colors.blue.shade900,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Profile Picture
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile_picture.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Full Name
                  const Text(
                    "Jaziel Clyde M. Bernasol",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Info Section
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                _tableRow(Icons.calendar_today, "Birthdate", "August 5, 2003"),
                _tableRow(Icons.location_on, "Address",
                    "Brgy. Badiang Anilao, Iloilo City"),
                _tableRow(
                    Icons.email, "Email", "jazielclyde.bernasol85@gmail.com"),
                _tableRow(Icons.phone, "Phone Number", "09563479750"),
                _tableRow(
                    Icons.school, "Education", "West Visayas State University"),
              ],
            ),
            const SizedBox(height: 24),

            // Biography Section
            const Text(
              "My Biography",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "Hi! I am Jaziel Clyde and I live in a small town. "
                "I like to play Basketball and sometimes Mobile Legends in my free time. "
                "I strive to be a better person every day and am passionate about learning new things.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for creating table rows
  TableRow _tableRow(IconData icon, String title, String data) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Icon(icon, size: 30, color: Colors.blue),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            data,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
