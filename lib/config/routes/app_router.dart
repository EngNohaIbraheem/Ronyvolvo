import 'package:fatto/exports.dart';
import 'package:fatto/features/Auth/login/presentation/screens/login_screen.dart';
import 'package:fatto/features/Auth/register/presentation/register_screen.dart';
import 'package:fatto/features/cart/presentation/cart_screen.dart';
import 'package:fatto/features/favorite/persentation/favorite_screen.dart';
import 'package:fatto/features/my_account/presentation/my_account_screen.dart';
import 'package:fatto/features/home_section/ui/home_section.dart';
import 'package:fatto/features/home_section/ui/product35.dart';
import 'package:fatto/features/order_mangement/choose_payment/presentation/screens/choose_payment_screen.dart';
import 'package:fatto/features/order_mangement/order/presentation/orderScreens.dart';
import 'package:fatto/features/order_mangement/order/presentation/paymentScreen.dart';
import 'package:fatto/features/order_mangement/order_check/presentation/screens/order_check_screen.dart';
import 'package:fatto/features/order_mangement/signin_tocheckout/presentation/screens/signin_screen.dart';
import 'package:fatto/features/product/presentation/screens/product_screen.dart';
import 'package:fatto/features/review/ui/review_page.dart';
import 'package:fatto/features/reviews/presentation/reviews_screen.dart';
import '../../features/home/presentation/homeScreen.dart';
import '../../features/profile_screens/presentation/screens/AddAddressScreen.dart';
import '../../features/profile_screens/presentation/screens/Termsandcondition.dart';
import '../../features/profile_screens/presentation/screens/change_password_profile_screen.dart';
import '../../features/profile_screens/presentation/screens/edit_screen_profile.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (context) => const SigninScreen(),
        );

      case Routes.myAccountRoute:
        return MaterialPageRoute(builder: (context) => const MyAccountScreen());

      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.myAccountRoute:
        return MaterialPageRoute(builder: (context) => const MyAccountScreen());

      case Routes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case Routes.addAddressScreen:
        return MaterialPageRoute(
          builder: (context) => AddAddressScreen(),
        );
      case Routes.editProfileScreen:
        return MaterialPageRoute(
          builder: (context) => EditProfileScreen(),
        );
      case Routes.termsAndConditionsScr:
        return MaterialPageRoute(
          builder: (context) => TermsAndConditionsScr(),
        );

      case Routes.changePasswordScreen:
        return MaterialPageRoute(
          builder: (context) => ChangePasswordScreen(),
        );

      case Routes.homeSection:
        return MaterialPageRoute(
          builder: (context) => const HomeSection(),
        );
      case Routes.product35:
        return MaterialPageRoute(
          builder: (context) => const Product35(),
        );
      case Routes.productScreen:
        return MaterialPageRoute(
          builder: (context) => const ProductScreen(),
        );
      case Routes.reviewsScreen:
        return MaterialPageRoute(
          builder: (context) => const ReviewsScreen(),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (context) => const CartScreen(),
        );

      case Routes.reviewRoute:
        return MaterialPageRoute(
          builder: (context) => const ReviewPage(),
        );
      case Routes.favoriteScreen:
        return MaterialPageRoute(
          builder: (context) => const FavoriteScreen(),
        );

      case Routes.orderScreens:
        return MaterialPageRoute(
          builder: (context) => const OrderScreens(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "No route defined for ${settings.name}",
              ),
            ),
          ),
        );
    }
  }
}
// The code snippet is a class named AppRouter that contains a method
// generateRoute which determines the route to be displayed based
// on the provided settings.
// The method generateRoute takes a settings object as input.
// It checks the name property of the settings object using a switch statement.
// If the name matches Routes.onBoardingScreen, it returns a
// MaterialPageRoute with a screen.
// If the name matches Routes.loginScreen, it returns a
// MaterialPageRoute with a screen.
// If no match is found, it returns a MaterialPageRoute with a Scaffold
// displaying a message indicating the route name that was not defined.
