import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  final CameraDescription camera;
  final Function(File) onPictureTaken; // Add this line

  const CameraScreen({
    Key? key,
    required this.camera,
    required this.onPictureTaken,
  }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
        backgroundColor: Color(0xFF610361),
      ),
      body: Column(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return CameraPreview(_controller);
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(50),
              backgroundColor: Colors.white,
              elevation: 2,
              shadowColor: Color.fromARGB(255, 107, 9, 116),
            ),
            onPressed: () async {
              try {
                await _initializeControllerFuture;
                final image = await _controller.takePicture();
                widget
                    .onPictureTaken(File(image.path)); // Call callback function
                print('Image taken: ${image.path}');
              } catch (e) {
                print('Error capturing image: $e');
              }
            },
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(121, 12, 12, 1),
                    Color.fromARGB(255, 202, 32, 32)
                  ],
                ).createShader(bounds);
              },
              child: const Icon(
                Icons.image,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// class CameraScreen extends StatefulWidget {
//   final CameraDescription camera;

//   const CameraScreen({Key? key, required this.camera, required Null Function(File file) onPictureTaken}) : super(key: key);

//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   var ImageCaptured;
//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(
//       widget.camera,
//       ResolutionPreset.medium,
//     );
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text('Camera'),
//           ],
//         ),
//         // actions: [
//         //   ElevatedButton(
//         //       style: ElevatedButton.styleFrom(
//         //         shape: const CircleBorder(),
//         //         padding: const EdgeInsets.all(2),
//         //         backgroundColor: Colors.white,
//         //         elevation: 2,
//         //         shadowColor: Color.fromARGB(255, 107, 9, 116),
//         //       ),
//         //       onPressed: () async {
//         //         try {
//         //           await _initializeControllerFuture;
//         //           final image = await _controller.takePicture();
//         //           // Handle captured image, e.g., save it or display it

//         //           setState(() {
//         //             ImageCaptured = image;
//         //             print(ImageCaptured.toString());
//         //           });
//         //           print('Image taken: ${image.path}');
//         //         } catch (e) {
//         //           print('Error capturing image: $e');
//         //         }
//         //       },
//         //       child: ShaderMask(
//         //         shaderCallback: (Rect bounds) {
//         //           return const LinearGradient(
//         //             begin: Alignment.topCenter,
//         //             end: Alignment.bottomCenter,
//         //             colors: [
//         //               Color.fromRGBO(121, 12, 12, 1),
//         //               Color.fromARGB(255, 202, 32, 32)
//         //             ],
//         //           ).createShader(bounds);
//         //         },
//         //         child: const Icon(
//         //           Icons.image,
//         //           size: 20,
//         //         ),
//         //       )),
//         // ],
//         backgroundColor: Color(0xFF610361),
//       ),
//       body: Column(children: [
//         FutureBuilder<void>(
//           future: _initializeControllerFuture,
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.done) {
//               return CameraPreview(_controller);
//             } else {
//               return Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//         ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               shape: const CircleBorder(),
//               padding: const EdgeInsets.all(50),
//               backgroundColor: Colors.white,
//               elevation: 2,
//               shadowColor: Color.fromARGB(255, 107, 9, 116),
//             ),
//             onPressed: () async {
//               try {
//                 await _initializeControllerFuture;
//                 final image = await _controller.takePicture();
//                 // Handle captured image, e.g., save it or display it

//                 setState(() {
//                   ImageCaptured = image;
//                   print(ImageCaptured.toString());
//                 });
//                 print('Image taken: ${image.path}');
//               } catch (e) {
//                 print('Error capturing image: $e');
//               }
//             },
//             child: ShaderMask(
//               shaderCallback: (Rect bounds) {
//                 return const LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color.fromRGBO(121, 12, 12, 1),
//                     Color.fromARGB(255, 202, 32, 32)
//                   ],
//                 ).createShader(bounds);
//               },
//               child: const Icon(
//                 Icons.image,
//                 size: 25,
//               ),
//             )),
//       ]),
//     );
//   }
// }
