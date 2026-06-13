import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/main_button.dart';
import 'package:hajj_app/Custome_Widgets/simple_container.dart';
import 'package:hajj_app/Screens/simple_detailes_screen.dart';

class EhramScreen extends StatelessWidget {
  final String title;
  EhramScreen({super.key, required this.title});
  final List<Item> ehramSunna = [
    Item(
      number: "1",
      text:
          "الاغتسال والتطيب (سنة) ولبس ملابس الإحرام (إزار ورداء أبيضين للرجل، وللمرأة ما شاءت من اللباس الساتر غير متبرجة ولا منتقبة ولا قفازين).",
    ),
    Item(number: "2", text: "صلاة ركعتين سنة الإحرام (إن لم يكن وقت كراهة)."),
    Item(
      number: "3",
      text: ". النية: يقول بقلبه ولسانه: «لبيك عمرة» (أو اللهم لبيك عمرة). ",
    ),
    Item(
      number: "4",
      text:
          "التلبية: بعد النية يرفع الرجل صوته بالتلبية: «لبيك اللهم لبيك، لبيك لا شريك لك لبيك، إن الحمد والنعمة لك والملك، لا شريك لك». والمرأة تخفض صوتها. تستمر التلبية في العمرة حتى يبدأ الطواف.",
    ),
  ];

  final List<Item> ihramWajibat = [
    Item(number: "1", text: "الإحرام من الميقات المعتبر شرعًا."),
    Item(
      number: "2",
      text: "التجرد من المخيط للرجل ولبس لباس الإحرام المشروع.",
    ),
    Item(number: "3", text: "اجتناب جميع محظورات الإحرام بعد عقد النية."),
    Item(number: "4", text: "الاستمرار في الإحرام حتى يتم التحلل المشروع."),
  ];
  final List<Item> ihramMahdorat = [
    Item(number: "1", text: "إزالة شعر الرأس أو البدن عمدًا."),
    Item(number: "2", text: "تقليم الأظفار عمدًا."),
    Item(number: "3", text: "استعمال الطيب بعد الإحرام في البدن أو الثوب."),
    Item(
      number: "4",
      text: "لبس الرجل للمخيط المعتاد كالقمص والسراويل والعمامة.",
    ),
    Item(number: "5", text: "تغطية الرجل رأسه بما يلاصقه."),
    Item(number: "6", text: "لبس المرأة للنقاب أو القفازين."),
    Item(number: "7", text: "عقد النكاح لنفسه أو لغيره."),
    Item(
      number: "8",
      text: "الجماع ومقدماته من المباشرة بشهوة والتقبيل ونحوه.",
    ),
    Item(number: "9", text: "قتل صيد البر الوحشي أو الإعانة على صيده."),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Column(
        children: [
          MainButton(
            icon: Icons.abc,
            title: " واجبات الإحرام ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: " واجبات الإحرام ",
                    title: " واجبات الإحرام  ",
                    items: ihramWajibat,
                    cardId: " واجبات الإحرام  ",
                  ),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: " سنن الإحرام ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: " سنن الإحرام ",
                    title: " سنن الإحرام",
                    items: ehramSunna,
                    cardId: " سنن الإحرام",
                  ),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: " محظورات الإحرام ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: " محظورات الإحرام ",
                    title: "محظورات الإحرام  ",
                    items: ihramMahdorat,
                    cardId: "محظورات الإحرام  ",
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
