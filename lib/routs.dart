import 'package:flutter/material.dart';
import 'package:resummeapp_3/Screens/ExperinceScreen.dart';
import 'package:resummeapp_3/Screens/Info.dart';
import 'package:resummeapp_3/Screens/Intro.dart';
import 'package:resummeapp_3/Screens/Skills_Screen.dart';
import 'package:resummeapp_3/Screens/contact_Screen.dart';
import 'package:resummeapp_3/Screens/hobbies.dart';

import 'Screens/EductionScreen.dart';
import 'Screens/Splash_Screen.dart';


class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes =
  {
            '/':(context)=>SplashScreen(),
             '/info':(context)=>InfoScreen(),
              '/intro':(context)=>IntroScreen(),
             '/contact':(context)=>ContactScreen(),
              '/Skills':(context)=>SkillsScreen(),
              '/edu':(context)=>Eductionscreen(),
             '/exp':(context)=>Experincescreen(),
              '/hobbies':(context)=>HobbiesScren(),
  };
  };

}
