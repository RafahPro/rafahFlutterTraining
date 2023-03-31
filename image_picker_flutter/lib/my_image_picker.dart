import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePicker extends StatefulWidget {
  const MyImagePicker({Key? key}) : super(key: key);

  @override
  State<MyImagePicker> createState() => _MyImagePickerState();
}



class _MyImagePickerState extends State<MyImagePicker> {
  File? _image;
  final ImagePicker picker = ImagePicker();
  void _chooseImage() async{
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }
  void _captureImage() async{
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            _image!=null? Image.file(_image!):const Icon(Icons.image,size: 150,),
            ElevatedButton(
              onPressed: (){_chooseImage();},
              onLongPress: (){_captureImage();},
              child: const Text('Pick/Capture Image'),
            ),

          ],
        ),
      ),

    );
  }
}
