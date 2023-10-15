// import 'package:flutter/material.dart';
// // import 'package:flutter_map/flutter_map.dart';
// // import 'package:latlong2/latlong.dart';
// // import 'package:routez_dart/login_page.dart';
// // import 'package:url_launcher/url_launcher.dart';
// // import 'package:geocoding/geocoding.dart';
// // import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
// // import 'package:geolocator/geolocator.dart';
//
//
// //
// // Future<void> geocodeAddress(String address) async {
// //   try {
// //     List<Location> locations = await locationFromAddress(address);
// //     if (locations.isNotEmpty) {
// //       Location first = locations.first;
// //       print('Latitude: ${first.latitude}, Longitude: ${first.longitude}');
// //     } else {
// //       print('No results found');
// //     }
// //   } catch (e) {
// //     print('Error: $e');
// //   }
// // }
// //
// // Future<void> reverseGeocode(double latitude, double longitude) async {
// //   try {
// //     List<Placemark> placemarks = await placemarkFromCoordinates(latitude, longitude);
// //     if (placemarks.isNotEmpty) {
// //       Placemark first = placemarks.first;
// //       print('Address: ${first.street}, ${first.locality}, ${first.country}');
// //     } else {
// //       print('No results found');
// //     }
// //   } catch (e) {
// //     print('Error: $e');
// //   }
// // }
// class MainPage extends StatefulWidget {
//   @override
//   _MainPageState createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;
//
//   static List<Widget> _widgetOptions = <Widget>[
//     // HomeScreen(),
//     DashboardScreen(),
//     VehicleScreen(),
//     ExtraScreen(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _widgetOptions.elementAt(_selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home', // Label for the Home icon
//             backgroundColor: Colors.white38,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard),
//             label: 'DashBoard', // Label for the Dashboard icon
//             backgroundColor: Colors.white38,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.car_rental),
//             label: 'Vehicles', // Label for the Vehicles icon
//             backgroundColor: Colors.white38,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_pin),
//             label: 'Profile', // Label for the Profile icon
//             backgroundColor: Colors.white38,
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.red,
//         showUnselectedLabels: true, // Show the labels for unselected items
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
//
// // map page
// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   _HomeScreenState createState() => _HomeScreenState();
// // }
//
// // class _HomeScreenState extends State<HomeScreen> {
// //   double _currentLatitude = 28.4467; // Replace with your default latitude
// //   double _currentLongitude = 77.0320; // Replace with your default longitude
// //
// //   MapController _mapController = MapController();
// //   bool _isDragging = false;
// //   double _x = 0;
// //   double _y = 0;
// //   String searchAddr = ''; // New variable for search address
// //
// //   Future<void> _handleRefresh() async {
// //     // Simulate an async task (e.g., fetching data from a server) with a delay.
// //     await Future.delayed(Duration(seconds: 1));
// //     // Add any refresh logic here, if needed.
// //   }
// //
// //   // Function to perform search action
// //   void performSearch() async {
// //     if (searchAddr.isNotEmpty) {
// //       try {
// //         List<Location> locations = await locationFromAddress(searchAddr);
// //         if (locations.isNotEmpty) {
// //           Location location = locations[0];
// //           setState(() {
// //             _currentLatitude = location.latitude;
// //             _currentLongitude = location.longitude;
// //           });
// //           _mapController.move(
// //             LatLng(location.latitude, location.longitude),
// //             12.0,
// //           );
// //         } else {
// //           print("No results found");
// //         }
// //       } catch (error) {
// //         print("Error while geocoding: $error");
// //       }
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: TextField(
// //           // style: TextStyle(color: Colors.black),
// //           decoration: const InputDecoration(
// //             hintText: 'Enter your destination',
// //             border: InputBorder.none,
// //             contentPadding: EdgeInsets.all(16.0),
// //           ),
// //           onChanged: (val) {
// //             setState(() {
// //               searchAddr = val;
// //             });
// //           },
// //           // Add a done button to the keyboard to trigger search
// //           textInputAction: TextInputAction.done,
// //           onSubmitted: (_) {
// //             performSearch();
// //           },
// //         ),
// //         automaticallyImplyLeading: false,
// //         backgroundColor: Colors.grey,
// //         shape: const ContinuousRectangleBorder(
// //           borderRadius: BorderRadius.vertical(
// //             bottom: Radius.circular(30),
// //           ),
// //         ),
// //         actions: [
// //           IconButton(
// //             icon: Icon(Icons.search),
// //             onPressed: performSearch, // Call the search function
// //           ),
// //         ],
// //       ),
// //       body: RefreshIndicator(
// //         onRefresh: _handleRefresh,
// //         child: Stack(
// //           children: [
// //             FlutterMap(
// //               mapController: _mapController,
// //               options: MapOptions(
// //                 center: LatLng(_currentLatitude, _currentLongitude),
// //                 zoom: 12.0,
// //               ),
// //               layers: [
// //                 TileLayerOptions(
// //                   urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
// //                   subdomains: ['a', 'b', 'c'],
// //                   tileSize: 256,
// //                 ),
// //                 MarkerLayerOptions(
// //                   markers: [
// //                     Marker(
// //                       width: 30.0,
// //                       height: 30.0,
// //                       point: LatLng(_currentLatitude, _currentLongitude),
// //                       builder: (ctx) => Container(
// //                         child: Icon(
// //                           Icons.location_on,
// //                           color: Colors.red,
// //                         ),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             Positioned.fromRect(
// //               rect: Rect.fromLTWH(
// //                 MediaQuery.of(context).size.width - 70 + _x,
// //                 MediaQuery.of(context).size.height / 2 + _y,
// //                 56,
// //                 56,
// //               ),
// //               child: GestureDetector(
// //                 onPanUpdate: (details) {
// //                   setState(() {
// //                     _x += details.delta.dx;
// //                     _y += details.delta.dy;
// //                   });
// //                 },
// //                 onPanStart: (_) {
// //                   setState(() {
// //                     _isDragging = true;
// //                   });
// //                 },
// //                 onPanEnd: (_) {
// //                   setState(() {
// //                     _isDragging = false;
// //                   });
// //                 },
// //                 child: Opacity(
// //                   opacity: _isDragging ? 0.7 : 1.0,
// //                   child: FloatingActionButton(
// //                     onPressed: () {
// //                       showDialog(
// //                         context: context,
// //                         builder: (BuildContext context) {
// //                           return AlertDialog(
// //                             title: const Text('Contact Information'),
// //                             content: Column(
// //                               mainAxisSize: MainAxisSize.min,
// //                               children: [
// //                                 Image.asset('images/call.png'),
// //                                 const SizedBox(height: 10),
// //                                 InkWell(
// //                                   child: const Text(
// //                                     'Email: adityarajparashar5@gmail.com',
// //                                     style: TextStyle(
// //                                       decoration: TextDecoration.underline,
// //                                       color: Colors.red,
// //                                     ),
// //                                   ),
// //                                   onTap: () {
// //                                     launch('mailto:adityarajparashar5@gmail.com');
// //                                   },
// //                                 ),
// //                                 const SizedBox(height: 10),
// //                                 const Align(
// //                                   alignment: Alignment.centerLeft,
// //                                   child: Text('Phone: +9193155 38770'),
// //                                 ),
// //                               ],
// //                             ),
// //                             actions: [
// //                               TextButton(
// //                                 onPressed: () {
// //                                   Navigator.pop(context);
// //                                 },
// //                                 child: const Text(
// //                                   'Close',
// //                                   style: TextStyle(
// //                                     color: Colors.red,
// //                                   ),
// //                                 ),
// //                               ),
// //                               TextButton(
// //                                 onPressed: () {
// //                                   launch('tel:+9193155 38770');
// //                                 },
// //                                 child: const Text(
// //                                   'Call',
// //                                   style: TextStyle(
// //                                     color: Colors.red,
// //                                   ),
// //                                 ),
// //                               ),
// //                             ],
// //                           );
// //                         },
// //                       );
// //                     },
// //                     child: const Icon(Icons.chat),
// //                     backgroundColor: Colors.red,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// class VehicleSearchDelegate extends SearchDelegate<String> {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // Implement your search results here
//     return Center(
//       child: Text('Search Results for "$query"'),
//     );
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // Implement your search suggestions here
//     final suggestions = [
//       'route no. 16',
//       'route no. 37',
//       'route no. 33',
//       'route no. 14',
//       'route no. 19',
//     ];
//
//     final filteredSuggestions = query.isEmpty
//         ? suggestions
//         : suggestions.where((suggestion) =>
//         suggestion.toLowerCase().contains(query.toLowerCase())).toList();
//
//     return ListView.builder(
//       itemCount: filteredSuggestions.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(filteredSuggestions[index]),
//           onTap: () {
//             close(context, filteredSuggestions[index]);
//           },
//         );
//       },
//     );
//   }
// }
//
// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({Key? key}) : super(key: key);
//
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }
//
// class _DashboardScreenState extends State<DashboardScreen> {
//   Future<void> _handleRefresh() async {
//     // Simulate an async task (e.g., fetching data from a server) with a delay.
//     await Future.delayed(Duration(seconds: 1));
//     // Add any refresh logic here, if needed.
//     setState(() {}); // This will rebuild the UI after refreshing
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             'Dashboard',
//             style: TextStyle(
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold
//             ),
//           ),
//         ),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.red,
//         elevation: 5, // Add elevation for a subtle shadow
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//         ),
//       ),
//       body: RefreshIndicator(
//         onRefresh: _handleRefresh,
//         child: ListView(
//           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           children: [
//             SizedBox(height: 29),
//             // Active Vehicles
//             _buildSection('Active Vehicles', Colors.grey, () {
//               // Navigate to VehicleScreen when Active Vehicles section is tapped
//               Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleScreen()));
//             }),
//             SizedBox(height: 35),
//             // Inactive Vehicles
//             _buildSection('Inactive Vehicles', Colors.grey, () {
//               // Navigate to VehicleScreen when Inactive Vehicles section is tapped
//               Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleScreen()));
//             }),
//             SizedBox(height: 35),
//             // Total Vehicles
//             _buildSection('Total Vehicles', Colors.grey, () {
//               // Navigate to VehicleScreen when Total Vehicles section is tapped
//               Navigator.push(context, MaterialPageRoute(builder: (context) => VehicleScreen()));
//             }),
//             SizedBox(height: 20),
//             // Add more sections or widgets as needed
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSection(String title, Color color, [VoidCallback? onTap]) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 130,
//         decoration: BoxDecoration(
//           color: color,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Center(
//           child: Text(
//             title,
//             style: const TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class VehicleScreen extends StatefulWidget {
//   const VehicleScreen({Key? key}) : super(key: key);
//
//   @override
//   _VehicleScreenState createState() => _VehicleScreenState();
// }
//
// class _VehicleScreenState extends State<VehicleScreen> {
//   List<String> allBuses = [
//     'route no. 33',
//     'route no. 30',
//     'route no. 37',
//     'route no. 14',
//     'route no. 19',
//     // Add more bus numbers as needed
//   ];
//
//   List<String> filteredBuses = [];
//
//   @override
//   void initState() {
//     super.initState();
//     filteredBuses = allBuses; // Initialize the filtered list with all buses
//   }
//
//   void filterBuses(String keyword) {
//     setState(() {
//       filteredBuses = allBuses
//           .where((bus) => bus.toLowerCase().contains(keyword.toLowerCase()))
//           .toList();
//     });
//   }
//
//   Future<void> _refreshBuses() async {
//     // Simulate an async task (e.g., fetching data from a server) with a delay.
//     await Future.delayed(Duration(seconds: 1));
//
//     // Update the bus list or perform any other refresh logic here.
//     setState(() {
//       // Refresh the list (for demonstration, reassign the same list)
//       filteredBuses = allBuses;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Vehicles'),
//         automaticallyImplyLeading: false, // Remove the back button
//         backgroundColor: Colors.red,
//         elevation: 5, // Add elevation for a subtle shadow
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//         ),
//         actions: [ // Add search bar with bus number filtering
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () async {
//               final busNumber = await showSearch<String>(
//                 context: context,
//                 delegate: BusSearchDelegate(allBuses),
//               );
//               if (busNumber != null) {
//                 // Filter buses based on the entered bus number
//                 filterBuses(busNumber);
//               }
//             },
//           ),
//         ],
//       ),
//       body: RefreshIndicator(
//         onRefresh: _refreshBuses,
//         child: ListView.builder(
//           itemCount: filteredBuses.length,
//           itemBuilder: (context, index) {
//             return const ListTile(
//               // title: Text(filteredBuses[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class BusSearchDelegate extends SearchDelegate<String> {
//   final List<String> allBuses;
//
//   BusSearchDelegate(this.allBuses);
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }
//   @override
//   Widget buildResults(BuildContext context) {
//     // In this case, we don't render any bus numbers on the screen.
//     // Instead, we close the search bar with the selected bus number
//     if (query.isNotEmpty) {
//       close(context, query);
//     }
//     return SizedBox.shrink();
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final filteredBuses = allBuses
//         .where((bus) => bus.toLowerCase().contains(query.toLowerCase()))
//         .toList();
//
//     return ListView.builder(
//       itemCount: filteredBuses.length,
//       itemBuilder: (context, index) {
//         final busNumber = filteredBuses[index];
//         return ListTile(
//           title: Text(busNumber),
//           onTap: () {
//             close(context, busNumber);
//           },
//         );
//       },
//     );
//   }
// }
//
// class ExtraScreen extends StatefulWidget {
//   const ExtraScreen({Key? key}) : super(key: key);
//
//   @override
//   _ExtraScreenState createState() => _ExtraScreenState();
// }
//
// class _ExtraScreenState extends State<ExtraScreen> {
//   bool notificationEnabled = true;
//   Future<void> _handleRefresh() async {
//     // Add your refresh logic here (e.g., fetch new data from the server).
//     // Simulate an async task with a delay of 1 second.
//     await Future.delayed(Duration(seconds: 1));
//     setState(() {
//       // You can update the UI here after refreshing.
//     });
//   }
//   void _showReportDialog(BuildContext context) {
//     String reportText = ''; // To store the user's input for the report issue
//
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Report'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Please describe the issue:'),
//               SizedBox(height: 10),
//               TextField(
//                 onChanged: (value) {
//                   reportText = value;
//                 },
//                 maxLines: 3,
//                 decoration: InputDecoration(
//                   hintText: 'Enter your report here',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 // Perform the action for reporting here.
//                 // For example, you can show a success message or trigger an API call to report the content.
//                 print('Report: $reportText');
//               },
//               child: Text('Report'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//   // Function to show the notification settings dialog.
//   void _showNotificationDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Notification Settings'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Enable Notifications'),
//               SizedBox(height: 10),
//               SwitchListTile(
//                 title: Text('Receive notifications'),
//                 value: notificationEnabled,
//                 onChanged: (newValue) {
//                   setState(() {
//                     notificationEnabled = newValue;
//                     // TODO: Implement logic to update the notification preference in your app
//                     // For example, you can use shared preferences or a database to save the preference.
//                   });
//                 },
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context); // Close the dialog
//               },
//               child: Text('Close'),
//             ),
//           ],
//         );
//       },
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Profile',
//           style: TextStyle(
//             fontSize: 24, // Increase the font size
//             fontWeight: FontWeight.bold,
//             color: Colors.white, // Text color
//           ),
//         ),
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.red,
//         elevation: 5, // Add elevation for a subtle shadow
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 26.0),
//         child: Container(
//           height: MediaQuery.of(context).size.height * 0.7,
//           decoration: BoxDecoration(
//             color: Colors.white, // Background color
//             borderRadius: BorderRadius.circular(20), // Rounded corners
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1), // Shadow color
//                 blurRadius: 10,
//                 spreadRadius: 5,
//               ),
//             ],
//           ),
//           child: RefreshIndicator(
//             onRefresh: _handleRefresh,
//             child: ListView(
//               children: [
//                 Divider(
//                   color: Colors.black.withOpacity(0.2),
//                   thickness: 1.0,
//                 ),
//                 Container(
//                   height: 45,
//                   child: ListTile(
//                     leading: Icon(Icons.person),
//                     title: const Text(
//                       'Profile',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     onTap: () {
//                       // Add functionality for the profile list tile here
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ProfileScreen(),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 35),
//                   child: Divider(),
//                 ),
//                 // Add Student Login Section
//                 ListTile(
//                   leading: Icon(Icons.login),
//                   title: Text('Student Login',
//                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//                   ),
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => loginPage()),
//                     );
//                   },
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 25),
//                   child: Divider(),
//                 ),
//                 // Add Admin Login Section
//                 ListTile(
//                   leading: Icon(Icons.login),
//                   title: Text('Admin Login',
//                     style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//                   ),
//                   // onTap: () {
//                   //   Navigator.push(
//                   //     context,
//                   //     MaterialPageRoute(builder: (context) => loginPage()),
//                   //   );
//                   // },
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 30),
//                   child: Divider(),
//                 ),
//                 Container(
//                   height: 50,
//                   child: ListTile(
//                     leading: Icon(Icons.notifications),
//                     title: const Text(
//                       'Notifications',
//                       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     trailing: Switch(
//                       value: notificationEnabled,
//                       onChanged: (newValue) {
//                         setState(() {
//                           notificationEnabled = newValue;
//                           // TODO: Implement logic to update the notification preference in your app
//                           // For example, you can use shared preferences or a database to save the preference.
//                         });
//                       },
//                     ),
//                     onTap: () {
//                       _showNotificationDialog(context);
//                     },
//                   ),
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 40),
//                   child: Divider(),
//                 ),
//                 Container(
//                   height: 50,
//                   child: ListTile(
//                     leading: Icon(Icons.report),
//                     title: const Text(
//                       'Report',
//                       style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//                     ),
//                     onTap: () {
//                       // Add functionality for the "Report" list tile here
//                       _showReportDialog(context);
//                     },
//                   ),
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 40),
//                   child: Divider(),
//                 ),
//                 Container(
//                   height: 50,
//                   padding: const EdgeInsets.only(bottom: 10.0),
//                   child: GestureDetector(
//                     // onTap: () {
//                     //   Navigator.push(
//                     //     context,
//                     //     MaterialPageRoute(builder: (context) => loginPage()),
//                     //   );
//                     // },
//                     child: const ListTile(
//                       leading: Icon(Icons.logout),
//                       title: Text(
//                         'Logout',
//                         style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ),
//                 DividerTheme(
//                   data: DividerThemeData(color: Colors.black.withOpacity(0.8), space: 20),
//                   child: Divider(),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//
//     );
//   }
// }
//
// class ProfileScreen extends StatefulWidget {
//   @override
//   _ProfileScreenState createState() => _ProfileScreenState();
// }
//
// class _ProfileScreenState extends State<ProfileScreen> {
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _firstNameController = TextEditingController();
//   TextEditingController _lastNameController = TextEditingController();
//   TextEditingController _emailController = TextEditingController();
//
//   @override
//   void dispose() {
//     _usernameController.dispose();
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _emailController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.red,
//         elevation: 5, // Add elevation for a subtle shadow
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Username',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your username',
//               ),
//             ),
//             SizedBox(height: 16),
//             const Text(
//               'First Name',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               controller: _firstNameController,
//               decoration: const InputDecoration(
//                 hintText: 'Enter your first name',
//               ),
//             ),
//             SizedBox(height: 16),
//             const Text(
//               'Email',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             TextField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 hintText: 'Enter your email address',
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () {
//                 // Perform the logic to save the profile information
//                 String username = _usernameController.text;
//                 String firstName = _firstNameController.text;
//                 String lastName = _lastNameController.text;
//                 String email = _emailController.text;
//
//                 print('Username: $username');
//                 print('First Name: $firstName');
//                 print('Last Name: $lastName');
//                 print('Email: $email');
//
//                 // You can save the values in a database or any other storage mechanism
//               },
//               child: Text('Save'),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.red, // Set the button background color to red
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//


