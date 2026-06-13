import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/main_button.dart';
import 'package:hajj_app/Custome_Widgets/simple_container.dart';
import 'package:hajj_app/Screens/Hajj%20Screens/hajj_screen.dart';
import 'package:hajj_app/Screens/aumrah_screen.dart';
import 'package:hajj_app/Screens/simple_detailes_screen.dart';

import 'package:hajj_app/core/Thems/app_theme.dart';

class ManasekScreen extends StatelessWidget {
  final bool showNotification;
  final VoidCallback? onNotificationTap;
  final List<Item> hajjUmrahconditions = [
    Item(number: "1", text: "الإسلام: فلا يجب الحج ولا العمرة على الكافر."),
    Item(number: "2", text: "العقل: فلا يجبان على المجنون حتى يفيق."),
    Item(
      number: "3",
      text: "البلوغ: لا يجبان على الصغير، وإن حج صح حجه نفلاً.",
    ),
    Item(number: "4", text: "الحرية: من شروط الوجوب عند جمهور الفقهاء."),
    Item(
      number: "5",
      text: "الاستطاعة: وهي القدرة البدنية والمالية وأمن الطريق.",
    ),
    Item(number: "6", text: "وجود المحرم للمرأة عند من اشترطه من أهل العلم."),
  ];
  final List<Item> hajjUmrahFadael = [
    Item(number: "1", text: "الحج المبرور ليس له جزاء إلا الجنة."),
    Item(number: "2", text: "من حج فلم يرفث ولم يفسق رجع كيوم ولدته أمه."),
    Item(number: "3", text: "العمرة إلى العمرة كفارة لما بينهما من الذنوب."),
    Item(
      number: "4",
      text: "الحجاج والعمار وفد الله؛ دعاهم فأجابوه وسألوه فأعطاهم.",
    ),
    Item(
      number: "5",
      text: "المتابعة بين الحج والعمرة سبب لمغفرة الذنوب ونفي الفقر.",
    ),
    Item(
      number: "6",
      text:
          "في الحج اجتماع أنواع عظيمة من العبادات: التوحيد والذكر والدعاء والصلاة والإنفاق.",
    ),
    Item(
      number: "7",
      text: "الحج من أفضل الأعمال وأعظم القربات إلى الله تعالى.",
    ),
  ];
  final List<Item> hajjMiqat = [
    Item(
      number: "1",
      title: " ذو الحليفة ",
      text:
          "(أبيار علي): ميقات أهل المدينة ومن مرَّ بها، وهو أبعد المواقيت عن مكة",
    ),
    Item(
      number: "2",
      title: " الجحفة ",
      text:
          " ميقات أهل الشام ومصر والمغرب، ويحرم الناس اليوم غالبًا من رابغ القريبة منها",
    ),
    Item(
      number: "3",
      title: "قَرن  المنازل ",
      text: "  (السيل الكبير): ميقات أهل نجد ومن جاء من جهتهم",
    ),
    Item(
      number: "4",
      title: "يَلملم",
      text: " ميقات أهل اليمن ومن جاء من جهتهم",
    ),
    Item(number: "5", text: "ذات عِرق: ميقات أهل العراق ومن جاء من جهتهم."),
    Item(
      number: "6",
      text:
          "من كان داخل المواقيت فإنه يُحرم من مكانه، وأهل مكة يُحرمون بالحج من مكة.",
    ),
    Item(
      number: "7",
      text:
          "أما العمرة لأهل مكة فيُحرمون بها من الحِلّ، كالتنعيم أو الجعرانة ونحوهما.",
    ),
  ];
  ManasekScreen({
    super.key,

    this.showNotification = true,
    this.onNotificationTap,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        elevation: 0,

        toolbarHeight: 100,

        centerTitle: true,

        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          ),
        ),

        title: Text("دليل المناسك"),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.white, size: 34),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        actions: [
          if (showNotification)
            IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: AppColors.white,
                size: 34,
              ),
              onPressed: onNotificationTap,
            ),
        ],
      ),

      body: Column(
        children: [
          MainButton(
            icon: Icons.abc,
            title: "مناسك الحج",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HajjScreen(title: "مناسك الحج"),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: "مناسك العمرة ",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AumrahScreen(title: "مناسك العمرة "),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: "شروط وجوب الحج أو العمرة",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: "شروط وجوب الحج أو العمرة",
                    title: " الشروط ",
                    cardId: "شروط وجوب الحج أو العمرة",
                    items: hajjUmrahconditions,
                  ),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: "فضائل",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: "فضائل",
                    title: " فضائل الحج والعمرة",
                    cardId: " فضائل الحج والعمرة",
                    items: hajjUmrahFadael,
                  ),
                ),
              );
            },
          ),
          MainButton(
            icon: Icons.abc,
            title: "المواقيت",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SimpleDetailesScreen(
                    mainTitle: "المواقيت",
                    title: "المواقيت المكانية ",
                    cardId: "المواقيت المكانية ",
                    items: hajjMiqat,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
