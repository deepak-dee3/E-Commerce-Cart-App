import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notes/pages/sp.dart';
import 'firebase_options.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:AnimatedSplashScreen(nextScreen: home_page() ,
      splash: Icon(Icons.note),
      duration: 3000,
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.white,
      //pageTransitionType: PageTransitionType.scale,
      ),

      



    );
  }

}