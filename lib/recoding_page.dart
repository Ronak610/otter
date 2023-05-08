import 'dart:core';

import 'package:record/record.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recoding_Screen extends StatefulWidget {
  const Recoding_Screen({Key? key}) : super(key: key);

  @override
  State<Recoding_Screen> createState() => _Recoding_ScreenState();
}

class _Recoding_ScreenState extends State<Recoding_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Recoder"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: ()  async {
                // Import package

                final record = Record();

// Check and request permission
//                 if (await record.hasPermission()) {
//                 // Start recording
//
//                 }
                await record.start(
                  path: 'aFullPath/myFile.m4a',  // by default
                  bitRate: 128000, // by default
                  samplingRate: 44100, // by default
                );

              },
              child: Text("start"),
            ),
          ],
        ),
      ),
    );
  }
}
// // Import package
//
//
//
// // Check and request permission
//
// // Get the state of the recorder
// bool isRecording = await
// record.isRecording
// ();
//
// // Stop recording
// await
// record.stop
// ();
