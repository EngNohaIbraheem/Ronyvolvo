import 'package:fatto/features/profile_screens/presentation/widget/header_profile_section.dart';

import '../../../../exports.dart';
import '../../../my_account/presentation/widget/general_account_data.dart';




class MyAccountScreenLanguage extends StatelessWidget {
  const MyAccountScreenLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const HeaderProfileSectionA(),
              24.vs,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.general,
                      style: AppStyles.styleInterBold16.copyWith(color: AppColors.darkSlateGray),
                    ),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.profile, selectionName: 'Edit Profile', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.moreCircle,
                      selectionName: 'Language', onPressed: () {
                        _showLanguageBottomSheet(context);

                      },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.address, selectionName: 'Address', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.shieldDone, selectionName: 'Change Password', onPressed: () {  },),
                    16.vs,
                    GeneralAccountData(svgIconPath: AppAssets.lock, selectionName: 'Terms & Conditions', onPressed: () {  },),
                    16.vs,
                    Padding(
                      padding:  EdgeInsets.all(16.r),
                      child: GeneralAccountData(svgIconPath: AppAssets.logout,
                        selectionName: 'Logout', onPressed: () {
                          _showLogoutBottomSheet(context);

                          // push(context: context, route: Routes.loginRoute);
                      },),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  void _showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Suggested', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ListTile(
                title: Text('English (US)'),
                trailing: Icon(Icons.check_circle, color: Colors.orange),
                onTap: () {
                  // Handle language change
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('العربية'),
                trailing: Icon(Icons.radio_button_unchecked),
                onTap: () {
                  // Handle language change
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showLogoutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Logout',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Are you sure you want to log out?',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Dismiss the bottom sheet
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: Text('CANCEL'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Perform logout action
                      Navigator.pop(context); // Dismiss the bottom sheet
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: Text('YES, LOGOUT'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }


}
