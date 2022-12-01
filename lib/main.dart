import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sign_languager/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const SignLanguagerApp());
}

class SignLanguagerApp extends StatelessWidget {
  const SignLanguagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocationSelectScreen(),
    );
  }
}

class LocationSelectScreen extends StatelessWidget {
  const LocationSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(

              ),
              Row(

              ),
            ],
          ),
          appBar: AppBar(

          ),
        )
    );
  }
}


class GenderSelectScreen extends StatelessWidget {
  const GenderSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bruh"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FemaleSelection())),
                  child: Image.network(
                    "https://www.nicepng.com/png/full/208-2086851_female-icon-png.png",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MaleSelection())),
                  child: Image.network(
                    "https://www.nicepng.com/png/full/41-410053_male-symbol-png.png",
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    )));
  }
}

class MaleSelection extends StatelessWidget {
  const MaleSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                          "https://www.pngkey.com/png/full/384-3847176_human-body-outline-png.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.network(
                            "https://e7.pngegg.com/pngimages/655/6/png-clipart-female-body-shape-human-body-silhouette-female-leg-miscellaneous-angle.png"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
        )
    );
  }
}

class FemaleSelection extends StatelessWidget {
  const FemaleSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.network(
                            "https://e7.pngegg.com/pngimages/655/6/png-clipart-female-body-shape-human-body-silhouette-female-leg-miscellaneous-angle.png"
                        ),
                        SizedBox(
                          height: 70,
                          width: 70,
                          child: MaterialButton(
                            color: Colors.black12,
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HeadSelection())),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.network(
                        "https://e7.pngegg.com/pngimages/655/6/png-clipart-female-body-shape-human-body-silhouette-female-leg-miscellaneous-angle.png"
                    ),
                    )
                  ),
              ],
            ),
          ),
        )
      )
    );
  }
}

class HeadSelection extends StatelessWidget {
  const HeadSelection({super.key});


  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
          body: Center(
            child: HeadView(),
          ),
        ),
    );
  }

}

class HeadView extends StatelessWidget {
  const HeadView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network("https://www.easydrawingtips.com/wp-content/uploads/2018/05/female_face_drawing.png"),
        Positioned(
          left: 170,
          top: 165,
          child: SizedBox(
            width: 50,
            height: 35,
            child: MaterialButton(
              color: Colors.black12,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NoseSelection())),
              ),
            ),
          ),
      ]
    );
  }
}

class NoseSelection extends StatelessWidget {
  const NoseSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
                Container(
                  color: Colors.purple,
                  child: const Text("Bruh"),
              ),
              Expanded(
                flex: 8,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child: const Text("He'd have you all unravel at the"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[200],
                      child: const Text('Heed not the rabble'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[300],
                      child: const Text('Sound of screams but the'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[400],
                      child: const Text('Who scream'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[500],
                      child: const Text('Revolution is coming...'),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[600],
                      child: const Text('Revolution, they...'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
