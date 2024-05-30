import 'package:flutter/material.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  FlutterTts flutterTts = FlutterTts();
  String userInputText = '';
  String identifiedLanguage = '';
  String translatedText = '';
  String selectedTargetLanguage = 'Turkish';
  bool isLoading = false;

  final Map<String, TranslateLanguage> languageMap = {
    'English': TranslateLanguage.english,
    'French': TranslateLanguage.french,
    'German': TranslateLanguage.german,
    'Italian': TranslateLanguage.italian,
    'Spanish': TranslateLanguage.spanish,
    'Turkish': TranslateLanguage.turkish,
  };

  Future<void> identifyText() async {
    if (userInputText.isEmpty) return;

    setState(() {
      isLoading = true;
    });

    final languageIdentifier = LanguageIdentifier(confidenceThreshold: 0.5);
    final language = await languageIdentifier.identifyLanguage(userInputText);
    languageIdentifier.close();

    setState(() {
      identifiedLanguage = language;
    });
    await translateText();

    setState(() {
      isLoading = false;
    });
  }

  Future<void> translateText() async {
    if (userInputText.isEmpty || !languageMap.containsKey(selectedTargetLanguage)) return;

    final onDeviceTranslator = OnDeviceTranslator(
      sourceLanguage: TranslateLanguage.values.firstWhere((element) => element.bcpCode == identifiedLanguage),
      targetLanguage: languageMap[selectedTargetLanguage]!,
    );

    final String response = await onDeviceTranslator.translateText(userInputText);
    onDeviceTranslator.close();

    setState(() {
      translatedText = response;
    });
  }

  void _speak() async {
    await flutterTts.speak(translatedText);
  }

  void _stop() async {
    await flutterTts.stop();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translation'),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Enter The Text To Be Translated',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        userInputText = value;
                      });
                    },
                    maxLines: 5,
                    minLines: 4,
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: TextEditingController(text: translatedText),
                    decoration: const InputDecoration(
                      labelText: 'Translated Text',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 5,
                    minLines: 4,
                    readOnly: true,
                  ),
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: selectedTargetLanguage,
                      items: languageMap.keys.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTargetLanguage = newValue!;
                        });
                      },
                    ),
                    const SizedBox(width: 20.0),
                    Tooltip(
                      message: 'Outputs text to speech',
                      child: IconButton(
                        onPressed: _speak,
                        icon: const Icon(Icons.volume_up),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Tooltip(
                      message: 'Stops the speech output',
                      child: IconButton(
                        onPressed: _stop,
                        icon: const Icon(Icons.volume_down),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: identifyText,
                        child: const Text('Translate'),
                      ),
                    )
                  ],
                ),
              ],
            ),
            if (isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
