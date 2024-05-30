import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:text_processing_app/second_page.dart';
import 'package:flutter_tts/flutter_tts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? _imageFile;
  FlutterTts flutterTts = FlutterTts();
  String _extractedText = '';
  bool _isProcessing = false;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    setState(() {
      _imageFile = File(pickedFile.path);
      _isProcessing = true;
    });
    await _processImage();
  }

  Future<void> _takePicture() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile == null) return;
    setState(() {
      _imageFile = File(pickedFile.path);
      _isProcessing = true;
    });
    await _processImage();
  }

  Future<void> _processImage() async {
    if (_imageFile == null) return;
    final inputImage = InputImage.fromFilePath(_imageFile!.path);
    final textRecognizer = TextRecognizer();
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
    String extractedText = recognizedText.text;
    textRecognizer.close();
    setState(() {
      _extractedText = extractedText;
      _isProcessing = false;
    });
  }

  void _speak() async {
    await flutterTts.speak(_extractedText);
  }

  void _stop() async {
    await flutterTts.stop();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Extraction'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: TextEditingController(text: _extractedText),
                    decoration: const InputDecoration(
                      labelText: 'Extracted Text',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 15,
                    minLines: 10,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _isProcessing
                        ? const CircularProgressIndicator()
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 80,
                          child: Tooltip(
                            message: 'Picks an image with the camera',
                            child: ElevatedButton.icon(
                              onPressed: _takePicture,
                              icon: const Icon(Icons.camera_alt),
                              label: const Text('Camera'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 60.0),
                        SizedBox(
                          width: 150,
                          height: 80,
                          child: Tooltip(
                            message: 'Picks an image from the gallery',
                            child: ElevatedButton.icon(
                              onPressed: _pickImage,
                              icon: const Icon(Icons.photo_library),
                              label: const Text('Gallery'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width:80,
                          height: 80,
                          child: Tooltip(
                            message: 'Outputs text to speech',
                            child: IconButton.filledTonal(
                              onPressed: _speak,
                              icon: const Icon(Icons.volume_up),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Tooltip(
                            message: 'Stops the speech output',
                            child: IconButton.filledTonal(
                              onPressed: _stop,
                              icon: const Icon(Icons.volume_off),
                            ),
                          ),
                        ),
                        const SizedBox(width: 45.0),
                        SizedBox(
                          width: 150,
                          height: 80,
                          child: Tooltip(
                            message: 'Navigates to the translation page',
                            child: ElevatedButton.icon(
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SecondPage()),
                              ),
                              icon: const Icon(Icons.translate),
                              label: const Text('Translate'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
