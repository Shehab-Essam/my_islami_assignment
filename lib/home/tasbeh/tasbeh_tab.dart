import 'package:flutter/material.dart';
import 'package:islami_practice/my%20theme.dart';
class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0 ;
  String text = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
           children:[
        const SizedBox(height:50,),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.transparent,
                   elevation: 0
               ),
               onPressed:(){Tasbe7();},
               child:Image.asset('assets/images/seb7a.png',width: 238, height: 238),
             ),
        const SizedBox(height:90,),
        Container(color:const Color(0xe0b7935f),height:70,width:50,
            child: Center(child: Text('$counter',style:Theme.of(context).textTheme.titleMedium,))
        ),
       const SizedBox(height:20,),
             Container(color:MyTheme.primaryLight,height:60,width:130,
                 child: Center(child: Text(text,
                   style: const TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),))
             ),
           ]
      ),
    );
  }

  void Tasbe7 ()
  {
    if(counter<=32)
    {
      counter=counter+1;
      text='سبحان الله';
    }
    if(32<counter&&counter<=65)
    {
      counter=counter+1;
      text='الحمد لله';
    }
    if(65<counter&&counter<=98)
    {
      counter=counter+1;
      text='استغفر الله';
    }
    if(98<counter&&counter<=132)
    {
      counter=counter+1;
      text='الله اكبر';
     }
    if(133<=counter)
    {
     counter= 0 ;
    }
    setState(() {});
  }
}
