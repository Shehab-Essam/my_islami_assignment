import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_practice/home/Settings/language_bottom.dart';
import 'package:islami_practice/home/Settings/theme_bottom.dart';
import 'package:islami_practice/providers/app%20config%20provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
          style:Theme.of(context).textTheme.titleMedium,),
          SizedBox(height:15),
          InkWell(
            onTap:(){
              ShowLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.appLanguage=='en'?
                      AppLocalizations.of(context)!.english
                      :AppLocalizations.of(context)!.arabic,
                      style:Theme.of(context).textTheme.titleMedium),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
          SizedBox(height:15),
          Text(AppLocalizations.of(context)!.theme,
            style:Theme.of(context).textTheme.titleMedium,),
          SizedBox(height:15),
          InkWell(
            onTap:(){
              ShowThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(provider.isDark()?
                  AppLocalizations.of(context)!.dark
                      :AppLocalizations.of(context)!.light,
                      style:Theme.of(context).textTheme.titleMedium),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
           ]
      ),
    );
  }

  void ShowLanguageBottomSheet(){
    showModalBottomSheet(context: context,
        builder:(context)=>LanguageBottom());
  }
  void ShowThemeBottomSheet(){
    showModalBottomSheet(context: context,
        builder:(context)=>ThemeBottom());
  }
}
