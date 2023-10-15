// import 'package:flutter/material.dart';
// import 'package:trackingbus_dart/fadeanimation_dart.dart';
// import 'package:trackingbus_dart/login.dart';
//
// class ProfileSection extends StatefulWidget {
//   const ProfileSection({super.key});
//
//   @override
//   State<ProfileSection> createState() => _ProfileSectionState();
// }
//
// class _ProfileSectionState extends State<ProfileSection> {
//   @override
//   Widget build(BuildContext context) {
//     return return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const CircleAvatar(
//           radius: 50,
//           backgroundColor: Colors.grey,
//           backgroundImage: AssetImage('images/loginuser.png'), // Replace with the actual path to the user's profile image
//         ),
//         const SizedBox(height: 16),
//         const Text(
//           'User Name',
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 24),
//         const Divider(),
//         ListTile(
//           leading: const Icon(Icons.edit),
//           title: const Text('Edit Profile'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => EditProfile()), // Replace YourNextScreen() with the screen you want to navigate to
//             );
//           },
//         ),
//         const Divider(),
//         ListTile(
//           leading: const Icon(Icons.report),
//           title: const Text('Report'),
//           onTap: () {
//             _showReportDialog(context);
//           },
//         ),
//         const Divider(),
//         ListTile(
//           leading: const Icon(Icons.room_service_sharp),
//           title: const Text('Customer Service'),
//           onTap: () {
//             // Handle edit profile action
//           },
//         ),
//         const Divider(),
//         ListTile(
//           leading: const Icon(Icons.logout),
//           title: const Text('Log Out'),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomePage()), // Replace YourNextScreen() with the screen you want to navigate to
//             );
//           },
//         ),
//         const Divider(),
//       ],
//     );
//   }
// }
//
//
// void _showReportDialog(BuildContext context) {
//   String reportText = ''; // To store the user's input for the report issue
//
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: Colors.black87,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//         ),
//         title: const Text('Report :',
//           style: TextStyle(color: Colors.white),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text('Please describe the issue:',
//               style: TextStyle(color: Colors.white),
//             ),
//             const SizedBox(height: 10),
//             TextField(
//               onChanged: (value) {
//                 reportText = value;
//               },
//               maxLines: 3,
//               style:  const TextStyle(color: Colors.white),
//               decoration: InputDecoration(
//                 hintText: 'Enter your report here',
//                 border: const OutlineInputBorder(),
//                 hintStyle: const TextStyle(color: Colors.white),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//               // Perform the action for reporting here.
//               // For example, you can show a success message or trigger an API call to report the content.
//               print('Report: $reportText');
//             },
//             child: const Text('Report',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text('Cancel',
//               style: TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }
//   }
// }
