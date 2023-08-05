import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:file_picker/file_picker.dart';



class comunicationFileSelectionButton extends StatefulWidget {
  @override
  _comunicationFileSelectionButtonState createState() => _comunicationFileSelectionButtonState();
}

class _comunicationFileSelectionButtonState extends State<comunicationFileSelectionButton> {
  String? _filePath; // To store the selected file path

  Future<void> _selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _filePath = result.files.single.path!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: _selectFile,
          child: Text('Select File'),
        ),
        SizedBox(height: 16),
        if (_filePath != null)
          Text(
            'Selected File: $_filePath',
            style: TextStyle(fontSize: 16),
          ),
      ],
    );
  }
}
