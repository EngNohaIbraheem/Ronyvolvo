import 'package:fatto/exports.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class HeaderProfileSectionA extends StatefulWidget {
  const HeaderProfileSectionA({super.key});

  @override
  State<HeaderProfileSectionA> createState() => _HeaderProfileSectionAState();
}

class _HeaderProfileSectionAState extends State<HeaderProfileSectionA> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            color: AppColors.transparent,
            height: 260.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(AppAssets.profileBackGround,
                        width: double.infinity)),
                Positioned(
                  top: 65.h,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.myAccount,
                            style: AppStyles.styleInterBold24
                                .copyWith(color: AppColors.white),
                          ),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {},
                              child: SvgPicture.asset(AppAssets.notification)),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          height: 120.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 24,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ]),
          child: Row(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null ? FileImage(_image!) :
                      AssetImage('assets/default_avatar.png') as ImageProvider,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () => _pickImage(ImageSource.gallery),
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 20,
                          child: Icon(Icons.edit, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              16.hs,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Claire Cooper',
                      style: AppStyles.styleInterBold20
                          .copyWith(color: AppColors.darkSlateGray)),
                  4.vs,
                  Text('claire.cooper@mail.com',
                      style: AppStyles.styleInterRegular14
                          .copyWith(color: AppColors.taupeGray)),
                ],
              ),
              16.hs,
              GestureDetector(
                  onTap: () {}, child: SvgPicture.asset(AppAssets.edit))
            ],
          ),
        )
      ],
    );
  }
}
