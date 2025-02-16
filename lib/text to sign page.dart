import 'package:flutter/material.dart';

class TextToSignScreen extends StatefulWidget {
  @override
  _TextToSignScreenState createState() => _TextToSignScreenState();
}

class _TextToSignScreenState extends State<TextToSignScreen> {
  String inputText = "";
  String signOutput = "No sign conversion yet.";
  String signImage = ''; // Variable to hold image path or URL

  // Mapping text to images (replace these with actual images)
  Map<String, String> signLanguageMapping = {
    "hello": 'assets/images/img_1.png',
    "thank you": 'assets/images/img_2.png',
    "goodbye": 'assets/images/goodbye_sign.png',
  };

  void convertTextToSign() {
    setState(() {
      if (signLanguageMapping.containsKey(inputText.toLowerCase())) {
        signOutput = "Sign representation of: $inputText";
        signImage = signLanguageMapping[inputText.toLowerCase()]!;
      } else {
        signOutput = "No sign representation available for: $inputText";
        signImage = '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Set AppBar height
        child: AppBar(
          backgroundColor: Colors.purple.shade700,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          iconTheme: IconThemeData(color: Colors.white), // Back arrow color
          title: Padding(
            padding: EdgeInsets.only(top: 10), // Adjusted space before title
            child: Text(
              'Text-to-Sign Conversion',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40), // Extra space at the top
              TextField(
                onChanged: (value) => inputText = value,
                decoration: InputDecoration(
                  labelText: 'Enter text',
                  labelStyle: TextStyle(color: Colors.purple.shade900),
                  filled: true,
                  fillColor: Colors.purple.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.purple.shade500, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.purple.shade700, width: 2),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: convertTextToSign,
                child: Text('Convert Text to Sign'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple.shade700,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                signOutput,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purple.shade900),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              signImage.isNotEmpty
                  ? Image.asset(
                signImage,
                height: 350,
                width: 400,
                fit: BoxFit.cover,
              )
                  : Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.purple.shade400, width: 2),
                ),
                child: Center(
                  child: Text(
                    "No sign available.",
                    style: TextStyle(fontSize: 16, color: Colors.purple.shade900),
                  ),
                ),
              ),
              SizedBox(height: 40), // Added bottom spacing for better UI
            ],
          ),
        ),
      ),
    );
  }
}
