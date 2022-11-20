import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sign_languager/firebase_options.dart';


Future<void> main() async{
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
      title: 'Welcome',
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('tr', ''),
      ],
      home: HomeScreen(),
    );

  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }

}

Future <String> loadImage() async{
  //select the image url
  Reference ref = FirebaseStorage
      .instanceFor(bucket: "gs://signlanguager.appspot.com")
      .ref()
      .child("images/dog.jpg");

  //get image url from firebase storage
  var url = await ref.getDownloadURL();
  return url;
}

class HomeScreenState extends State<HomeScreen> {

  int _favouriteCounter = 0;

  void _increaseFavourite() {
    setState(() {
      _favouriteCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Lake Campground',
                    textScaleFactor: 0.4,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    AppLocalizations.of(context)!.welcome,
                    textScaleFactor: 0.4,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              MaterialButton(
                onPressed: _increaseFavourite,
                color: Colors.black,
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
              Text(
                  '$_favouriteCounter'
              ),
            ],
          ),
          const DogImage(),
        ],
      ),
    );
  }
}

class DogImage extends StatefulWidget {
  const DogImage({super.key});

  @override
  State<StatefulWidget> createState() {
    return DogImageState();
  }

}

class DogImageState extends State<DogImage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadImage(),
        builder: (BuildContext context, AsyncSnapshot<String> image)
        {
          return Image.network(image.data.toString());
        }
    );
  }
}
