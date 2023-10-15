import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            _buildNotificationBox(Icons.directions_bus, 'Your Bus is arriving soon.\n Be ready!'),
            SizedBox(height: 30), // Add space between the boxes
            _buildNotificationBox(Icons.alarm, 'Don\'t miss your bus!'),
            SizedBox(height: 30),
            _buildNotificationBox(Icons.directions_bus_filled, 'Bus is nearest to your home.'),
            SizedBox(height: 30),
            _buildNotificationBox(Icons.bus_alert_sharp, 'You missed your bus. \n you can wait for the next bus.'),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationBox(IconData icon, String message) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.red), // Add the icon here
          SizedBox(width: 20), // Add space between the icon and text
          Text(message),
        ],
      ),
    );
  }
}