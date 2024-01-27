// XYLOPHONE APP
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create a variable that holds a audio path string plus a color from Colors class
    var audioPath = {
      "audios/note.wav": Colors.red,
      "audios/note2.wav": Colors.orange,
      "audios/note3.wav": Colors.yellow,
      "audios/note4.wav": Colors.green,
      "audios/note5.wav": Colors.teal,
      "audios/note6.wav": Colors.blue,
      "audios/note6.wav": Colors.purple,
    };

    Expanded buildInstrumentTile(
        {required String audioPath, required Color color}) {
      return Expanded(
        child: MaterialButton(
          color: color,
          onPressed: () async {
            print(audioPath);
            final player = AudioPlayer();
            await player.play(AssetSource(audioPath));
          },
        ),
      );
    }

    return MaterialApp(
      title: "Xylophone",
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < audioPath.length; i++)
                buildInstrumentTile(
                  audioPath: audioPath.keys.elementAt(i),
                  color: audioPath.values.elementAt(i),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
