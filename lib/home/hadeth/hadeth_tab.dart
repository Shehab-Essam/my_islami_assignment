import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_practice/home/hadeth/item%20hadeth%20name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
 List <Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if(ahadethList.isEmpty){loadHadethFile();}
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_logo.png'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth_name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ahadethList.isEmpty?
          Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          )
              :
          Expanded(
            child: ListView.separated(
              separatorBuilder:(context,index){
                return  Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                );
              },
              itemBuilder:(contex,index){
                return ItemHadethName(hadeth:ahadethList[index]);
              },
              itemCount:ahadethList.length,
            ),
          )
        ],
      ),
    );
  }

  void loadHadethFile ()async{
    String ahadethConten = await rootBundle.loadString('assets/files/ahadeth.txt');
    List <String> hadethList = ahadethConten.split('#\r\n');
    for(int i = 0 ; i < hadethList.length ; i++)
      {
       List <String> hadethLines = hadethList[i].split('\n');
       String title = hadethLines[0];
       hadethLines.removeAt(0);
       Hadeth hadeth = Hadeth(title: title, content: hadethLines);
       ahadethList.add(hadeth);
      }
    setState(() {

    });
  }
}
class Hadeth {
  String title ;
  List<String> content = [];
  Hadeth({required this.title , required this.content});
}
