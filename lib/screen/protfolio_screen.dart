

import 'package:flutter/material.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('My Portfolio',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage("assets/icons/adil.jpg"), // Replace with your image asset
            ),
            SizedBox(height: 16.0),
            Text(
              'Md. Adil Ahnaf Patwary',
              style: TextStyle(
                 color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            Text(
              'Age: 22 Experience: 3 Years Bangladesh🇧🇩',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24.0),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text('your.email@example.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ListTile(
                leading: Icon(Icons.phone),
                title: Text('+1 123-456-7890'),
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(),
            ),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 20,
              runSpacing: 8.0,
              children: [
                Chip(label: Text('C++')),
                Chip(label: Text('C#')),
                Chip(label: Text('Python')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Django')),
                // Add more skills as needed
              ],
            ),
            SizedBox(height: 24.0),
            Text(
              'Projects',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            // Add your project details here
            // Example: ProjectCard(title: 'Project 1', description: 'Description 1'),
          ],
        ),
      ),
    );
  }
}