import 'package:fatto/core/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';


class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _changePassword() {
    // Implement the password change logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),

      appBar: AppBar(
        backgroundColor: Color(0xFFF8F8F8),

        title: Text('Change Password'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Current password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,
                    color: Color(0xFF007A9A),
                  ),
                  suffixIcon: Icon(Icons.visibility_off,
                    color: Color(0xFF007A9A),

                  ),
                ),
              ),
            ),
            // SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter new password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,
                    color: Color(0xFF007A9A),
                  ),
                  suffixIcon: Icon(Icons.visibility_off,
                    color: Color(0xFF007A9A),

                  ),
                ),
              ),
            ),
            // SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'confirm password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock,
                    color: Color(0xFF007A9A),
                  ),
                  suffixIcon: Icon(Icons.visibility_off,
                    color: Color(0xFF007A9A),

                  ),
                ),
              ),
            ),
            24.vs,
            CustomButton(
              text: 'Change Password',
              onPressed: () {},
            ),


          ],
        ),
      ),
    );
  }
}