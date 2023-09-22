import 'package:flutter/material.dart';
import 'package:islami_practice/home/hadeth/hadeth%20details%20screen.dart';
import 'package:islami_practice/home/hadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
   ItemHadethName({required this.hadeth});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(HadethDetails.routName,
            arguments:hadeth
        );
      },
      child: Text(hadeth.title,style: Theme.of(context).textTheme.titleSmall,textAlign: TextAlign.center,),
    );
  }
}
