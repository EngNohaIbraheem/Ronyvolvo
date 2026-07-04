import 'package:fatto/core/widgets/orange_header_section.dart';
import 'package:fatto/exports.dart';
import 'package:fatto/core/widgets/cart_list_section.dart';
import 'package:fatto/features/cart/presentation/widget/total_and_checkout_section.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const OrangeHeaderSection(title:AppStrings.bag,numberOfItems:
              '(5 Items)',isEdit: true,),
              // CartEmpty()
              CartListSection(),
              const TotalAndCheckoutSection()
            ],

          ),
        ),
      ),
    );
  }
}
