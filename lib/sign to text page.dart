import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignToTextScreen extends StatefulWidget {
  @override
  _SignToTextScreenState createState() => _SignToTextScreenState();
}

class _SignToTextScreenState extends State<SignToTextScreen> {
  String detectedText = "No sign detected yet.";
  final TextEditingController inputController = TextEditingController();
  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  void detectSign() {
    setState(() {
      detectedText = inputController.text.isNotEmpty
          ? inputController.text
          : "No input provided.";
    });
    inputController.clear();
  }

  Future<void> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
        detectedText = "Sign detected from image.";
      });
    }
  }

  Future<void> takePhoto() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
        detectedText = "Sign detected from camera.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Stack(
        children: [
          Column(
            children: [
              // Top Bar with Back Button and Title
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.purple.shade700,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 16, right: 16),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(right: 44), // Adjust for center alignment
                            child: Text(
                              "Sign-to-Text Converter",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),

                        // Detected Text Display
                        Card(
                          color: Colors.purple.shade100,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          elevation: 4,
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              detectedText,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple.shade900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        // Image Preview Section
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: selectedImage != null
                              ? Image.file(
                            selectedImage!,
                            height: 300,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                              : Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade100,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: Colors.purple.shade400, width: 2),
                            ),
                            child: Center(
                              child: Text(
                                "No image selected.",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.purple.shade900),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 30),

                        // Buttons for Gallery & Camera
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: pickImageFromGallery,
                              icon: Icon(Icons.photo_library, color: Colors.white),
                              label: Text("Gallery",
                                  style: TextStyle(color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                backgroundColor: Colors.purple.shade600,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                              onPressed: takePhoto,
                              icon: Icon(Icons.camera_alt, color: Colors.white),
                              label: Text("Camera",
                                  style: TextStyle(color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                padding:
                                EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                backgroundColor: Colors.purple.shade600,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        // Input TextField
                        TextField(
                          controller: inputController,
                          decoration: InputDecoration(
                            labelText: "Enter text manually",
                            labelStyle: TextStyle(color: Colors.purple.shade800),
                            filled: true,
                            fillColor: Colors.purple.shade100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                              BorderSide(color: Colors.purple.shade500, width: 2),
                            ),
                          ),
                        ),

                        SizedBox(height: 30),

                        // Submit Button
                        ElevatedButton(
                          onPressed: detectSign,
                          child: Text("Submit",
                              style: TextStyle(fontSize: 22, color: Colors.white)),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                            backgroundColor: Colors.purple.shade700,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
