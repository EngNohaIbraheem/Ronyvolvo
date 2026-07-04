import '../../../../../exports.dart';

class CustomDeliveryAddressModal extends StatelessWidget {
  const CustomDeliveryAddressModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxHeight: 280.h,
      ),
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
             Align(
              child: Text(
                'Enter the delivery address',
                style: AppStyles.styleInterSemiBold16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(color: Colors.grey),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 131.w,
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: CustomButton(
                    text: 'SAVE',
                    onPressed: () {
                      Navigator.of(context).pop(); // Close the modal
                    },
                    height: 40.h,
                    borderRadius: 6.r,
                  ),
                ),
              ),
            ),
            SizedBox(height: 22.h),
          ],
        ),
      ),
    );
  }
}
