import 'package:flutter/material.dart';
import 'package:islami_practice/home/quran/sura%20details%20screen.dart';

class QuranTab extends StatelessWidget {
  List<String> names = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/quran_icon.png'),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Text(
            'Sura Name',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder:(context,index){
                return  Divider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                );
              },
              itemBuilder:(contex,index){
                return InkWell(
                  onTap:(){
                    Navigator.of(context).pushNamed(SuraDetails.routName,
                    arguments:SuraArgs(
                        name:names[index],
                        index: index
                    )
                    );
                  },
                  child: Text(names[index],
                    style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.center,),
                );
              },
              itemCount: names.length,
            ),
          )
        ],
      ),
    );
  }
}
