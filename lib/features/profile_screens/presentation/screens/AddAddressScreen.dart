import 'package:fatto/core/extensions.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Address',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for address ....',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            20.vs,

            // SizedBox(height: 20),
            Text(
              'Recent Locations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            10.vs,

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.access_time, color: Colors.grey),
                    title: Text('Egypt Air Hospital - Masr Al Jadidah'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time, color: Colors.grey),
                    title: Text('Merryland Park - El montazah - Heliopolis'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time, color: Colors.grey),
                    title: Text('The Child Museum'),
                  ),
                  ListTile(
                    leading: Icon(Icons.access_time, color: Colors.grey),
                    title: Text('Egyptian Air Force - Masr El Jadidah'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

