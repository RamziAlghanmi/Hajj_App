import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/more_detailes.dart';
import 'package:hajj_app/Custome_Widgets/secondary_button.dart';
import 'package:hajj_app/Models/data_section.dart';
import 'package:hajj_app/Screens/detailes_screen.dart';
import 'package:hajj_app/Screens/ehram_screen.dart';

class AumrahScreen extends StatelessWidget {
  final String title;
  final List<DetailSection> umrahArkan = [
  DetailSection(
    title: "الطواف",
    hucm: "ركن",
    defination:
        "الدوران حول الكعبة سبعة أشواط كاملة، بدءًا من الحجر الأسود.",
    quranVerse: "وَلْيَطَّوَّفُوا بِالْبَيْتِ الْعَتِيقِ",
    quranVerseNumber: "الحج: 29",
    sunnahHadith: "خذوا عني مناسككم",
    sunnahHadithRawi: "مسلم",
    conditions: [
      Items(number: "1", title: "النية."),
      Items(number: "2", title: "الطهارة من الحدث والخبث."),
      Items(number: "3", title: "ستر العورة."),
      Items(number: "4", title: "جعل البيت عن يساره."),
      Items(number: "5", title: "أن يكون الطواف داخل المسجد وخارج الكعبة."),
      Items(number: "6", title: "الموالاة بين الأشواط إلا لعذر."),
    ],
    howTo: [
      Items(
        number: "1",
        title:
            "عند بدء الطواف يقطع التلبية ويستلم الحجر الأسود ويقبله إن استطاع، وإلا أشار إليه وقال: بسم الله، الله أكبر.",
      ),
      Items(
        number: "2",
        title:
            "يطوف سبعة أشواط على يساره، ويرمل الرجل في الأشواط الثلاثة الأولى.",
      ),
      Items(
        number: "3",
        title:
            "يقول بين الركن اليماني والحجر الأسود: ربنا آتنا في الدنيا حسنة وفي الآخرة حسنة وقنا عذاب النار.",
      ),
      Items(
        number: "4",
        title:
            "بعد إتمام السبعة يصلي ركعتين خلف مقام إبراهيم إن تيسر.",
      ),
    ],
  ),

  DetailSection(
    title: "السعي بين الصفا والمروة",
    hucm: "ركن",
    defination:
        "قطع المسافة بين الصفا والمروة سبع مرات، بدءًا من الصفا وختمًا بالمروة.",
    quranVerse:
        "إِنَّ الصَّفَا وَالْمَرْوَةَ مِن شَعَائِرِ اللَّهِ فَمَنْ حَجَّ الْبَيْتَ أَوِ اعْتَمَرَ فَلَا جُنَاحَ عَلَيْهِ أَن يَطَّوَّفَ بِهِمَا",
    quranVerseNumber: "البقرة: 158",
    sunnahHadith: "اسعوا فإن الله كتب عليكم السعي",
    sunnahHadithRawi: "رواه أحمد وصححه الألباني",
    conditions: [
      Items(number: "1", title: "أن يقع بعد طواف صحيح."),
      Items(number: "2", title: "أن يكون سبعة أشواط كاملة."),
      Items(number: "3", title: "أن يبدأ بالصفا ويختم بالمروة."),
      Items(number: "4", title: "الموالاة بين الأشواط."),
    ],
    howTo: [
      Items(
        number: "1",
        title:
            "يبدأ بالصفا ويستقبل القبلة ويقرأ الآية ثم يقول: أبدأ بما بدأ الله به.",
      ),
      Items(
        number: "2",
        title:
            "يتجه إلى المروة، ويسرع الرجل بين العلمين الأخضرين فقط.",
      ),
      Items(
        number: "3",
        title:
            "عند المروة يفعل مثلما فعل عند الصفا من ذكر ودعاء.",
      ),
      Items(
        number: "4",
        title:
            "يستمر حتى يتم سبعة أشواط، وينتهي الشوط السابع عند المروة.",
      ),
    ],
  ),

  DetailSection(
    title: "الحلق أو التقصير",
    hucm: "ركن",
    defination:
        "إزالة شعر الرأس كله بالحلق أو بعضه بالتقصير للتحلل من الإحرام، والمرأة تقصر قدر أنملة.",
    quranVerse:
        "لَتَدْخُلُنَّ الْمَسْجِدَ الْحَرَامَ إِن شَاءَ اللَّهُ آمِنِينَ مُحَلِّقِينَ رُءُوسَكُمْ وَمُقَصِّرِينَ",
    quranVerseNumber: "الفتح: 27",
    sunnahHadith:
        "رحمة الله على المحلقين ... والمقصرين",
    sunnahHadithRawi: "البخاري ومسلم",
    howTo: [
      Items(
        number: "1",
        title:
            "يحلق الرجل رأسه كاملاً وهو الأفضل، أو يقصر من جميع شعره.",
      ),
      Items(
        number: "2",
        title:
            "المرأة تقص من أطراف شعرها قدر أنملة تقريبًا.",
      ),
      Items(
        number: "3",
        title:
            "بعد الحلق أو التقصير يتحلل المعتمر من إحرامه وتنتهي عمرته.",
      ),
    ],
  ),
];
 AumrahScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SecondaryButton(
              number: 1,
              title: "الإحرام ",
              subtitle: "كونه من الميقات واجبا",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EhramScreen(title: " الإحرام "),
                  ),
                );
              },
            ),

           SecondaryButton(
  number: 2,
  title: "الطواف",
  subtitle: "سبعة أشواط",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: umrahArkan[0].title,
          data: umrahArkan[0],
        ),
      ),
    );
  },
),

SecondaryButton(
  number: 3,
  title: "السعي",
  subtitle: "السعي بين الصفا والمروة",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: umrahArkan[1].title,
          data: umrahArkan[1],
        ),
      ),
    );
  },
),

SecondaryButton(
  number: 4,
  title: "الحلق أو التقصير",
  subtitle: "للتحلل من الإحرام",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: umrahArkan[2].title,
          data: umrahArkan[2],
        ),
      ),
    );
  },
),
          ],
        ),
      ),
    );
  }
}
