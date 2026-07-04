import '../../../../../exports.dart';

class ShippingAddressWidget extends StatelessWidget {
  const ShippingAddressWidget({super.key, required this.addresses});

  final List<DeliveryAddressModel> addresses;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: addresses.map((address) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${address.firstName} ${address.lastName}',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                address.address,
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '${address.city}, ${address.postalCode}',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                ' ${address.state} ',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                ' ${address.phoneNumber}',
                style: AppStyles.styleInterRegular14.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      }).toList(),
    );
  }
}
