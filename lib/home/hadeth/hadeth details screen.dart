 import 'package:flutter/material.dart';
 import 'package:islami_practice/home/hadeth/hadeth_tab.dart';
 import 'package:islami_practice/home/hadeth/item%20hadeth%20details.dart';
import 'package:islami_practice/providers/app%20config%20provider.dart';
import 'package:provider/provider.dart';
class HadethDetails extends StatefulWidget {
  static const String routName = 'hadeth-Details';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth;
    return Stack(
        children: [
          provider.isDark()?
          Image.asset('assets/images/dark_bg.png',
            width: double.infinity,height: double.infinity,fit: BoxFit.fill,)
              : Image.asset('assets/images/main_background.png',
            width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
          Scaffold(
            appBar: AppBar(
              title: Text(args.title, style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,),
            ),
            body:
            ListView.builder(
              itemBuilder: ((context, index) {
                return ItemHadethDetails(content:args.content[index]);
              }
              ),
              itemCount: args.content.length,
            ),
          )
        ]
    );
  }
}