import 'package:flutter/material.dart';
import 'package:food_ninja/presentations/view/auth/upload_photo/layout/body.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  static const routeName = 'upload-photo';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: UploadPhotoBody(),
      ),
    );
  }
}
