import 'package:fatto/core/widgets/custom_stepper.dart';
import 'package:fatto/exports.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/screens/choose_payment_screen.dart';
import 'package:fatto/features/order_mangement/order_check/presentation/screens/order_check_screen.dart';
import 'package:fatto/features/order_mangement/shipping_address/presentation/screens/shipping_address_screen.dart';

class MyPageViewScreen extends StatefulWidget {
  const MyPageViewScreen({super.key});

  @override
  _MyPageViewScreenState createState() => _MyPageViewScreenState();
}

class _MyPageViewScreenState extends State<MyPageViewScreen> {
  final PageController _pageController = PageController();
  final List<String> steps = ['Delivery', 'Payment', 'Order Check'];
  int _activeStep = 0;

  void _onPageChanged(int pageIndex) {
    setState(() {
      _activeStep = pageIndex;
    });
  }

  void _onStepTapped(int step) {
    _pageController.jumpToPage(step);
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.hasClients) {
        _onPageChanged(_pageController.page?.toInt() ?? 0);
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      isTransparent: false,
      child: Column(
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomStepper(
              steps: steps,
              activeStep: _activeStep,
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: steps.length,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return ShippingAddressScreen(
                      activeStep: _activeStep,
                      onStepTapped: _onStepTapped,
                    );
                  case 1:
                    return ChoosePaymentScreen(
                      activeStep: _activeStep,
                      onStepTapped: _onStepTapped,
                    );
                  case 2:
                    return OrderCheckScreen(
                      activeStep: _activeStep,
                      onStepTapped: _onStepTapped,
                    );
                  default:
                    return Container(); // Fallback in case of unexpected index
                }
              },
              onPageChanged: _onPageChanged,
            ),
          ),
        ],
      ),
    );
  }
}
