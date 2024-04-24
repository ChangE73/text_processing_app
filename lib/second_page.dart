import 'package:flutter/material.dart';
import 'package:google_mlkit_translation/google_mlkit_translation.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String userInputText = '';
  String translatedText = '';
  final onDeviceTranslator = OnDeviceTranslator(sourceLanguage: TranslateLanguage.german, targetLanguage: TranslateLanguage.turkish);

  Future<void> translateText() async {
    if (userInputText.isEmpty) return;

    final String response = await onDeviceTranslator.translateText(userInputText);

    setState(() {
      translatedText = response;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Translation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter Text in German to Translate',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    userInputText = value;
                  });
                },
                maxLines: 5,
                minLines: 1,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: TextEditingController(text: translatedText),
                decoration: const InputDecoration(
                  labelText: 'Translated Text (Turkish)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                minLines: 1,
                readOnly: true,
              ),
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: translateText,
                    child: const Text('Translate'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
