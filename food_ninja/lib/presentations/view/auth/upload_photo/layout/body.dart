import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/configurations/resources.dart';
import 'package:food_ninja/presentations/elements/custom_back_button.dart';
import 'package:food_ninja/presentations/elements/custom_button.dart';
import 'package:food_ninja/presentations/elements/custom_text.dart';
import 'package:food_ninja/presentations/helper/navigation_helper.dart';
import 'package:food_ninja/presentations/view/auth/location/location.dart';
import 'package:food_ninja/presentations/view/auth/upload_photo/layout/widget/custom_card.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoBody extends StatefulWidget {
  const UploadPhotoBody({Key? key}) : super(key: key);

  @override
  State<UploadPhotoBody> createState() => _UploadPhotoBodyState();
}

class _UploadPhotoBodyState extends State<UploadPhotoBody> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? image;
  String? path;

  @override
  Widget build(BuildContext context) {
    print(path);
    const sizedBox = SizedBox(
      height: 20,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomBackButton(),
        sizedBox,
        CustomText(text: 'Some Text' , ),
        CustomText(
          text: 'Upload Your Photo Profile',
          fontWeight: FontWeight.w700,
          fontSize: 26,
        ),
        sizedBox,
        CustomText(
          text:
              'This data will be displayed in your account \nprofile for security',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        sizedBox,
        if (path == null)
          GestureDetector(
            onTap: () async {
              image = await _imagePicker.pickImage(source: ImageSource.gallery);
              setState(() {
                path = image!.path;
              });
            },
            child: CustomCard(
              imagePath: Resources.kGallery,
            ),
          ),

        //When the path of the image is not null image will be shown and the options will get hide
        sizedBox,
        if (path != null)
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.center,
                height: 240,
                width: 240,
                child: Stack(
                  children: [
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Image(
                        image: FileImage(
                          File(path!),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 18,
                      top: 20,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            path = null;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text(
                            'X',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        sizedBox,
        if (path == null)
          GestureDetector(
            onTap: () async {
              image = await _imagePicker.pickImage(
                source: ImageSource.camera,
              );
              setState(() {
                path = image!.path;
              });
            },
            child: CustomCard(
              imagePath: Resources.kCamera,
            ),
          ),
        const SizedBox(
          height: 160,
        ),
        Container(
            alignment: Alignment.center,
            child: CustomButton(
                text: 'Next',
                onPressed: () {
                  NavigationHelper.pushNamedRoute(context, Location.routeName);
                }))
      ],
    );
  }
}
