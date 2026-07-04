import 'package:fatto/exports.dart';
import 'package:flutter/material.dart';

class CustomLoadingDialog extends StatelessWidget {
  const CustomLoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              width: 347.w,
              height: 151.h, // Original height
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x29000000),
                    blurRadius: 10,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Payment is in progress',
                    style: AppStyles.styleInterBold20,
                  ),
                  10.vs,
                  Text(
                    'Please, wait a few moments',
                    style: AppStyles.styleInterBold14,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.35,
          left: MediaQuery.of(context).size.width * 0.5 - 40,
          child: Material(
            elevation: 8,
            shape: const CircleBorder(),
            child: Container(
              width: 85,
              height: 85,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// To show the dialog
void showCustomLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const CustomLoadingDialog();
    },
  );
}
