import 'package:flutter/material.dart';
import 'package:islami_practice/home/hadeth/hadeth%20details%20screen.dart';
import 'package:islami_practice/home/quran/sura%20details%20screen.dart';
import 'package:islami_practice/my%20theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_practice/providers/app%20config%20provider.dart';
import 'home/home screen.dart';
import 'package:provider/provider.dart';
void main()
{
   runApp(ChangeNotifierProvider(
      create :(context)=>AppConfigProvider(),
      child: const MyApp()));
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomeScreen.routeName,
      routes:
      {
        HomeScreen.routeName:(context)=>const HomeScreen(),
        SuraDetails.routName:(context)=>SuraDetails(),
        HadethDetails.routName:(context)=>HadethDetails(),
      },
      theme:MyTheme.lightTheme,
      darkTheme:MyTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      themeMode:provider.appTheme,
    );
  }

}