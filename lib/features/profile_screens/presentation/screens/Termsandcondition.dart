import 'package:fatto/core/extensions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F8F8),

        title: Text('Terms & conditions'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('1. Types of Data We Collect'),
            _buildParagraphText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
            ),
            24.vs,
            _buildSectionTitle('2. Use of Your Personal Data'),
            _buildParagraphText(
                'Magna etiam tempor orci eu lobortis elementum nibh. Vulputate enim nulla aliquet porttitor lacus. Orci sagittis eu volutpat odio. Cras semper auctor neque vitae tempus quam pellentesque. Nec nam aliquam sem et tortor consequat.'
            ),
            24.vs,
            _buildSectionTitle('3. Disclosure of Your Personal Data'),
            _buildParagraphText(
                'Consequat ut porta nibh venenatis cras sed. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Nibh tellus molestie nunc non blandit massa. Quam pellentesque nec nam aliquam sem et tortor consequat. Faucibus vitae aliquet nec ullamcorper sit amet risus. Enim nulla aliquet porttitor lacus luctus accumsan tortor.'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildParagraphText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16.0,
      ),
    );
  }
}