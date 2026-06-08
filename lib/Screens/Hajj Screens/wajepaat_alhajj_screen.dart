import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/more_detailes.dart';
import 'package:hajj_app/Custome_Widgets/secondary_button.dart';
import 'package:hajj_app/Models/data_section.dart';
import 'package:hajj_app/Screens/detailes_screen.dart';
import 'package:hajj_app/Screens/ehram_screen.dart';

class WajepaatAlhajjScreen extends StatelessWidget {
  final String title;
  WajepaatAlhajjScreen({super.key, required this.title});
  final List<DetailSection> hajjWajibat = [
    DetailSection(
      title: "رمي جمرة العقبة الكبرى يوم النحر",
      hucm: "واجب",
      defination: "قذف جمرة العقبة الكبرى بسبع حصيات يوم العاشر من ذي الحجة.",
      sunnahHadith:
          "حديث جابر رضي الله عنه في صفة حج النبي ﷺ وفيه رمي جمرة العقبة بسبع حصيات.",
      sunnahHadithRawi: "مسلم",
      howTo: [
        Items(number: "1", title: "يرمي الجمرة بسبع حصيات متفرقات."),
        Items(number: "2", title: "يكبر مع كل حصاة قائلاً: الله أكبر."),
        Items(number: "3", title: "يقطع التلبية عند بدء الرمي."),
        Items(number: "4", title: "لا يقف للدعاء بعد الرمي."),
      ],
      time:
          "من بعد منتصف ليلة النحر إلى آخر أيام التشريق، والسنة أن يكون ضحى يوم العيد.",
      place: "جمرة العقبة الكبرى.",
      rulingOnLeaving: "من ترك الرمي كله أو بعضه ولم يتداركه فعليه دم.",
      ruhsa: "يجوز للضعفة الرمي ليلًا، ويجوز للعاجز أن ينيب غيره.",
      kafarah: "دم عند ترك الرمي أو ترك بعضه على وجه لا يمكن تداركه.",
    ),

    DetailSection(
      title: "المبيت بمزدلفة ليلة النحر",
      hucm: "واجب",
      defination: "أن يحضر الحاج في مزدلفة جزءًا من الليل بعد الدفع من عرفة.",
      quranVerse:
          "فَإِذَا أَفَضْتُم مِّنْ عَرَفَاتٍ فَاذْكُرُوا اللَّهَ عِندَ الْمَشْعَرِ الْحَرَامِ",
      quranVerseNumber: "البقرة: 198",
      sunnahHadith: "بات النبي ﷺ بمزدلفة وصلى بها الفجر.",
      howTo: [
        Items(
          number: "1",
          title: "يصلي المغرب والعشاء جمع تأخير عند الوصول إلى مزدلفة.",
        ),
        Items(
          number: "2",
          title: "يبيت فيها معظم الليل أو إلى منتصف الليل على الأقل.",
        ),
        Items(
          number: "3",
          title: "يستحب البقاء حتى صلاة الفجر والإكثار من الذكر.",
        ),
      ],
      time: "ليلة العاشر من ذي الحجة.",
      place: "مزدلفة.",
      rulingOnLeaving: "من ترك المبيت بلا عذر فعليه دم.",
      ruhsa: "رخص النبي ﷺ للنساء والصبيان والضعفاء بالدفع بعد منتصف الليل.",
      kafarah: "دم عند ترك المبيت بغير عذر.",
    ),

    DetailSection(
      title: "رمي الجمار الثلاث أيام التشريق",
      hucm: "واجب",
      defination:
          "قذف الجمرات الثلاث بالحصى في أيام التشريق في أوقاتها المحددة.",
      sunnahHadith:
          "حديث جابر رضي الله عنه في صفة حج النبي ﷺ وفيه رمي الجمار الثلاث بعد الزوال.",
      sunnahHadithRawi: "مسلم",
      howTo: [
        Items(number: "1", title: "يرمي الجمرة الصغرى بسبع حصيات ثم يدعو."),
        Items(number: "2", title: "يرمي الجمرة الوسطى بسبع حصيات ثم يدعو."),
        Items(
          number: "3",
          title: "يرمي جمرة العقبة بسبع حصيات ولا يقف بعدها للدعاء.",
        ),
        Items(number: "4", title: "يُكبّر مع كل حصاة."),
      ],
      time: "من زوال الشمس إلى غروبها أيام 11 و12 و13 ذي الحجة.",
      place: "الجمرات الثلاث بمنى.",
      rulingOnLeaving:
          "من ترك جمرة كاملة أو ترك عددًا مؤثرًا من الحصيات فعليه دم.",
      ruhsa:
          "يجوز للعاجز والمريض وكبير السن والمرأة الضعيفة الإنابة في الرمي، ويجوز الرمي ليلًا عند الحاجة.",
      kafarah: "دم عند ترك جمرة كاملة أو ما يقوم مقامها.",
    ),

    DetailSection(
      title: "الحلق أو التقصير",
      hucm: "واجب",
      defination: "إزالة شعر الرأس أو تقصيره للتحلل من الإحرام.",
      quranVerse: "مُحَلِّقِينَ رُءُوسَكُمْ وَمُقَصِّرِينَ",
      quranVerseNumber: "الفتح: 27",
      sunnahHadith: "حلق النبي ﷺ رأسه وأمر أصحابه بالحلق أو التقصير.",
      howTo: [
        Items(
          number: "1",
          title: "الرجل يحلق رأسه كله وهو الأفضل أو يقصر من جميع الرأس.",
        ),
        Items(
          number: "2",
          title: "المرأة تقصر من أطراف شعرها قدر أنملة تقريبًا.",
        ),
      ],
      time:
          "يوم النحر بعد رمي جمرة العقبة، ويجوز تأخيره إلى ما بعد طواف الإفاضة.",
      rulingOnLeaving:
          "يبقى محرمًا حتى يحلق أو يقصر، ومن تركه فعليه دم عند الجمهور.",
      kafarah: "دم عند ترك الحلق أو التقصير.",
    ),

    DetailSection(
      title: "المبيت بمنى ليالي التشريق",
      hucm: "واجب",
      defination: "أن يبيت الحاج بمنى معظم الليل في ليالي التشريق.",
      sunnahHadith: "أذن النبي ﷺ للعباس أن يبيت بمكة لأجل السقاية.",
      sunnahHadithRawi: "متفق عليه",
      howTo: [
        Items(number: "1", title: "يكون المبيت داخل حدود منى."),
        Items(
          number: "2",
          title: "يبقى معظم الليل أو إلى منتصف الليل على الأقل.",
        ),
        Items(
          number: "3",
          title:
              "إذا تأخر إلى اليوم الثالث عشر وجب عليه مبيت ليلة الثالث عشر أيضًا.",
        ),
      ],
      time: "ليالي 11 و12 و13 لمن تأخر.",
      place: "منى.",
      rulingOnLeaving: "من ترك المبيت بغير عذر فعليه دم.",
      ruhsa: "يسقط عن المريض وأصحاب الخدمات العامة ومن لم يجد مكانًا للمبيت.",
      kafarah: "دم عن الليلة أو الليالي التي تركها بغير عذر.",
    ),

    DetailSection(
      title: "طواف الوداع",
      hucm: "واجب",
      defination:
          "الطواف بالبيت سبعة أشواط عند إرادة الخروج من مكة بعد انتهاء المناسك ليكون آخر العهد بالبيت.",
      sunnahHadith: "لا ينفرن أحدكم حتى يكون آخر عهده بالبيت",
      sunnahHadithRawi: "مسلم",
      howTo: [
        Items(number: "1", title: "يطوف سبعة أشواط كأي طواف."),
        Items(number: "2", title: "لا رمل فيه ولا اضطباع."),
        Items(number: "3", title: "يجعله آخر أعماله قبل مغادرة مكة."),
      ],
      time: "بعد الفراغ من جميع أعمال الحج وعند العزم على السفر.",
      place: "المسجد الحرام.",
      rulingOnLeaving:
          "من خرج من مكة دون طواف الوداع فعليه دم إلا من استثناهم الشرع.",
      ruhsa:
          "الحائض والنفساء وأهل مكة ومن نوى الإقامة بها لا يجب عليهم طواف الوداع.",
      kafarah: "دم لمن تركه من غير المعذورين.",
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
              subtitle: "الإحرام من الميقات المكاني",
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
              title: "رمي جمرة العقبة الكبرى",
              subtitle: "يوم النحر (١٠ ذي الحجة)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[0].title,
                      data: hajjWajibat[0],
                    ),
                  ),
                );
              },
            ),

            SecondaryButton(
              number: 3,
              title: "المبيت بمزدلفة",
              subtitle: "ليلة العاشر (ليلة النحر)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[1].title,
                      data: hajjWajibat[1],
                    ),
                  ),
                );
              },
            ),

            SecondaryButton(
              number: 4,
              title: "رمي الجمار الثلاث",
              subtitle: "أيام التشريق (١١، ١٢، ١٣)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[2].title,
                      data: hajjWajibat[2],
                    ),
                  ),
                );
              },
            ),

            SecondaryButton(
              number: 5,
              title: "الحلق أو التقصير",
              subtitle: "(للتحلل من الإحرام)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[3].title,
                      data: hajjWajibat[3],
                    ),
                  ),
                );
              },
            ),

            SecondaryButton(
              number: 6,
              title: "المبيت بمنى",
              subtitle: "ليالي التشريق (ليالي ١١، ١٢، ١٣)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[4].title,
                      data: hajjWajibat[4],
                    ),
                  ),
                );
              },
            ),

            SecondaryButton(
              number: 7,
              title: "طواف الوداع",
              subtitle: "(طواف الصدر)",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailesScreen(
                      title: hajjWajibat[5].title,
                      data: hajjWajibat[5],
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
