import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const SignLanguagerApp());
}

class SignLanguagerApp extends StatelessWidget {
  const SignLanguagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Welcome',
      localizationsDelegates: [
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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: <Widget>[
          Column(
             children: const [
               Text(
                 'Lake Campground',
                 textAlign: TextAlign.left,
               ),
               Text(
                 'In the middle of nowhere',
                 textAlign: TextAlign.left,
               ),
             ],
          ),
        ],
      ),
    );
  }

}


