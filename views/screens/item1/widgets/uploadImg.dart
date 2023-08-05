// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class UloadImgWidget extends StatefulWidget {
  const UloadImgWidget({super.key});

  @override
  State<UloadImgWidget> createState() => _UloadImgWidgetState();
}

class _UloadImgWidgetState extends State<UloadImgWidget> {
  void Selectimage(){

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.2,
      child: Stack(
        children: [
         const CircleAvatar(
            backgroundColor: Color.fromARGB(255, 139, 198, 225),
            radius: 64,
            backgroundImage: NetworkImage(
                'https://corekarachi.pk/wp-content/uploads/2019/05/member.png'),
          ),
          Positioned(
            child: IconButton(
              onPressed: Selectimage,
              icon: Icon(Icons.add_a_photo),
            ),
            bottom: -10,
            left: 80,
          )
        ],
      ),
    );
  }
}

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class UloadImgWidget extends StatefulWidget {
//   const UloadImgWidget({super.key});

//   @override
//   State<UloadImgWidget> createState() => _UloadImgWidgetState();
// }

// class _UloadImgWidgetState extends State<UloadImgWidget> {
//   String? _imagePath; // To store the selected image path

//   Future<void> _selectImage() async {
//     final ImagePicker _picker = ImagePicker();
//     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

//     if (image != null) {
//       setState(() {
//         _imagePath = image.path;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       heightFactor: 1.2,
//       child: Stack(
//         children: [
//           if (_imagePath != null)
//             CircleAvatar(
//               backgroundColor: Color.fromARGB(255, 139, 198, 225),
//               radius: 64,
//               backgroundImage: FileImage(File(_imagePath!)),
//             )
//           else
//             CircleAvatar(
//               backgroundColor: Color.fromARGB(255, 139, 198, 225),
//               radius: 64,
//               backgroundImage: NetworkImage(
//                   'https://corekarachi.pk/wp-content/uploads/2019/05/member.png'),
//             ),
//           Positioned(
//             child: IconButton(
//               onPressed: _selectImage,
//               icon: Icon(Icons.add_a_photo),
//             ),
//             bottom: -10,
//             left: 80,
//           )
//         ],
//       ),
//     );
//   }
// }
