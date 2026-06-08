import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/more_detailes.dart';
import 'package:hajj_app/Custome_Widgets/secondary_button.dart';
import 'package:hajj_app/Models/data_section.dart';
import 'package:hajj_app/Screens/detailes_screen.dart';
import 'package:hajj_app/Screens/ehram_screen.dart';

class ArkanAlhajjScreen extends StatelessWidget {
  final String title;
 ArkanAlhajjScreen({super.key, required this.title});
final List<DetailSection> hajjArkan = [
  DetailSection(
    title: "الوقوف بعرفة",
    hucm: "ركن",
    defination:
        "الوجود في أي جزء من عرفة ولو لحظة، من زوال شمس يوم التاسع من ذي الحجة إلى فجر يوم النحر.",
    quranVerse:
        "فَإِذَا أَفَضْتُم مِّنْ عَرَفَاتٍ فَاذْكُرُوا اللَّهَ عِندَ الْمَشْعَرِ الْحَرَامِ",
    quranVerseNumber: "البقرة: 198",
    sunnahHadith:
        "الحج عرفة، من جاء ليلة جمع قبل طلوع الفجر فقد أدرك الحج",
    sunnahHadithRawi:
        "رواه النسائي وأبو داود وصححه الألباني",
    time:
        "من زوال شمس يوم التاسع من ذي الحجة إلى طلوع فجر يوم النحر.",
    place: "عرفة",
    howTo: [
      Items(
        number: "1",
        title: "يتوجه الحاج إلى عرفة بعد شروق شمس يوم التاسع.",
      ),
      Items(
        number: "2",
        title: "يصلي الظهر والعصر جمع تقديم وقصرًا.",
      ),
      Items(
        number: "3",
        title: "يتفرغ للدعاء والذكر واستقبال القبلة ورفع اليدين.",
      ),
      Items(
        number: "4",
        title:
            "يكثر من قول: لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.",
      ),
      Items(
        number: "5",
        title: "يبقى حتى غروب الشمس خروجًا من الخلاف.",
      ),
    ],
  ),

  DetailSection(
    title: "طواف الإفاضة",
    hucm: "ركن",
    defination:
        "الطواف بالبيت سبعة أشواط، وهو ركن الحج بعد الوقوف بعرفة.",
    quranVerse:
        "ثُمَّ لْيَقْضُوا تَفَثَهُمْ وَلْيُوفُوا نُذُورَهُمْ وَلْيَطَّوَّفُوا بِالْبَيْتِ الْعَتِيقِ",
    quranVerseNumber: "الحج: 29",
    sunnahHadith:
        "طاف النبي ﷺ طواف الإفاضة يوم النحر.",
    time:
        "يبدأ وقته من بعد منتصف ليلة النحر إلى آخر العمر، والأفضل يوم العاشر.",
    howTo: [
      Items(
        number: "1",
        title: "يطوف سبعة أشواط حول الكعبة.",
      ),
      Items(
        number: "2",
        title: "يبدأ من الحجر الأسود وينتهي به.",
      ),
      Items(
        number: "3",
        title: "لا رمل فيه ولا اضطباع لمن سبق له السعي.",
      ),
      Items(
        number: "4",
        title: "به يحصل التحلل الأكبر.",
      ),
    ],
  ),

  DetailSection(
    title: "السعي بين الصفا والمروة",
    hucm: "ركن",
    defination:
        "قطع المسافة بين الصفا والمروة سبع مرات، بدءًا بالصفا وختمًا بالمروة.",
    sunnahHadith:
        "اسعوا فإن الله كتب عليكم السعي",
    sunnahHadithRawi:
        "رواه أحمد وصححه الألباني",
    howTo: [
      Items(
        number: "1",
        title: "يبدأ بالصفا ويختم بالمروة.",
      ),
      Items(
        number: "2",
        title: "يكون سبعة أشواط كاملة.",
      ),
      Items(
        number: "3",
        title: "يسرع الرجل بين العلمين الأخضرين.",
      ),
      Items(
        number: "4",
        title: "يكثر من الذكر والدعاء أثناء السعي.",
      ),
    ],
  ),
];
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
  title: "الوقوف بعرفة",
  subtitle: "(الركن الأعظم)",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: hajjArkan[0].title,
          data: hajjArkan[0],
        ),
      ),
    );
  },
),

SecondaryButton(
  number: 3,
  title: "طواف الإفاضة",
  subtitle: "(طواف الزيارة)",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: hajjArkan[1].title,
          data: hajjArkan[1],
        ),
      ),
    );
  },
),

SecondaryButton(
  number: 4,
  title: "السعي",
  subtitle: "السعي بين الصفا والمروة",
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailesScreen(
          title: hajjArkan[2].title,
          data: hajjArkan[2],
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
