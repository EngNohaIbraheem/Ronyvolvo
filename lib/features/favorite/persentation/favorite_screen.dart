import 'package:fatto/core/widgets/orange_header_section.dart';
import 'package:fatto/features/favorite/persentation/widget/favorite_list_section.dart';

import '../../../exports.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const OrangeHeaderSection(title:AppStrings.favorite,numberOfItems: '(5 Items)',isEdit: false,),
              27.vs,
              const FavoriteListSection()
            ],

          ),
        ),
      ),
    );
  }
}
