import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_practice/home/quran/item%20details.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = 'Details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
   if(verses.isEmpty)
     {
       loadFile(args.index);
     }
    return Stack(
      children: [
      Image.asset('assets/images/main_background.png',
      width: double.infinity,height: double.infinity,fit: BoxFit.fill,),
    Scaffold(
      appBar:AppBar(
      title: Text('${args.name}',style:Theme.of(context).textTheme.titleLarge,),
       ),
      body:verses.length==0?
          Center(child: CircularProgressIndicator())
      :
      ListView.separated(
        separatorBuilder:(context,index){
          return  Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          );
        },
          itemBuilder:((context,index){
          return ItemDetails(content:verses[index],index:index,);
          }
          ),
        itemCount:verses.length,
      ),
       )
      ]
    );
  }

  Future<void> loadFile(int index)
  async {
    String contant = await rootBundle.loadString('assets/files/${index+1}.txt');
    List <String> line = contant.split('\n');
    verses = line ;
    setState(() {});
    print(line);
  }
}
class SuraArgs
{
  String name ;
  int index ;
  SuraArgs({required this.name,required this.index});
}
