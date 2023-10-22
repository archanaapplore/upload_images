library upload_images;

import 'package:flutter/material.dart';

void showPicker(
    context, {
      required Function cameraFunction,
      required Function galleryFunction,
    }) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return SafeArea(
        child: Wrap(
          children: <Widget>[
            ListTile(
                leading: const Icon(Icons.photo_library),
                title:   const Text('Photo Library'),
                onTap: () {
                  galleryFunction();
                }),
            ListTile(
              leading:  const Icon(Icons.photo_camera),
              title:   const Text('Camera'),
              onTap: () async {
                cameraFunction();
              },
            ),
          ],
        ),
      );
    },
  );
}
