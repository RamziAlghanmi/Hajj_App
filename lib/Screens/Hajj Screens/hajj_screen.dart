import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/main_button.dart';
import 'package:hajj_app/Custome_Widgets/simple_container.dart';
import 'package:hajj_app/Screens/Hajj%20Screens/arkan_alhajj_screen.dart';
import 'package:hajj_app/Screens/Hajj%20Screens/wajepaat_alhajj_screen.dart';
import 'package:hajj_app/Screens/simple_detailes_screen.dart';

class HajjScreen extends StatelessWidget {
  final String title;
  HajjScreen({super.key, required this.title});
  final List<Item> hajj_types = [
    Item(
      number: "1",
      title: "حج التمتع ",
      text:
          "  أفضل الأنساك عند الجمهور. وهو أن يُحرم بالعمرة في أشهر الحج (شوال أو ذي القعدة أو عشر ذي الحجة)، ويُحل منها، ثم يُحرم بالحج يوم التروية (8 ذي الحجة) من مكة. وعليه هدي (ذبح شاة أو سبع بدنة أو بقرة).",
    ),
    Item(
      number: "2",
      title: "حج القران",
      text:
          " أن يُحرم بالعمرة والحج معًا من الميقات، ويبقى على إحرامه إلى يوم النحر. وعليه هدي كالمتمتع",
    ),
    Item(
      number: "3",
      title: " حج الإفراد",
      text:
          " أن يُحرم بالحج فقط من الميقات، ويبقى على إحرامه حتى يوم النحر، ثم بعد التحلل يؤدي العمرة إن شاء. وليس عليه هدي.",
    ),
    Item(number: "4", text: "يُستحب التمتع للقادر على الهدي"),
  ];
  final List<Item> hajj_sunnah = [
    Item(number: "1", text: "الاغتسال والتنظف والتطيب قبل الإحرام."),
    Item(number: "2", text: "لبس الرجل إزارًا ورداءً أبيضين نظيفين."),
    Item(
      number: "3",
      text: "صلاة ركعتين قبل الإحرام إن تيسر ولم يكن وقت كراهة.",
    ),
    Item(number: "4", text: "رفع الرجل صوته بالتلبية، وإخفاء المرأة صوتها."),
    Item(number: "5", text: "الإكثار من التلبية والذكر والدعاء أثناء الحج."),
    Item(
      number: "6",
      text: "الرمل والاضطباع للرجال في طواف القدوم أو طواف العمرة.",
    ),
    Item(number: "7", text: "استلام الحجر الأسود وتقبيله إن تيسر دون مزاحمة."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Column(
        children: [
          MainButton(
            icon: Icons.abc,
            title: "أنواع النسك ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: "أنواع النسك ",
                    title: " أنواع النسك  ",
                    items: hajj_types,
                  ),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: " أركان الحج ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ArkanAlhajjScreen(title: " أركان الحج "),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: " واجبات الحج",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      WajepaatAlhajjScreen(title: " واجبات الحج"),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: "سنن الحج ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: "سنن الحج ",
                    title: "سنن الحج",
                    items: hajj_sunnah,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
