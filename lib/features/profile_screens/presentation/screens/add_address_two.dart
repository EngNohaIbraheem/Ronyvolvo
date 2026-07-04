import 'package:fatto/core/extensions.dart';
import 'package:fatto/features/profile_screens/presentation/widget/Address_form.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';



class AddAddressScreenLocation extends StatefulWidget {
  @override
  State<AddAddressScreenLocation> createState() =>
      _AddAddressScreenLocationState();
}

class _AddAddressScreenLocationState extends State<AddAddressScreenLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffC2C2C2),
          title: Text('Add Address'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              AddressForm(),
              Spacer(),
              CustomButton(
                text: 'save',
                onPressed: () {},
              ),
            ],
          ),
        ));
    // );
  }
}
