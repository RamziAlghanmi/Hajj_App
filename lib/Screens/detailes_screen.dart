import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/custome_appbar.dart';
import 'package:hajj_app/Custome_Widgets/more_detailes.dart';
import 'package:hajj_app/Custome_Widgets/simple_container.dart';
import 'package:hajj_app/Models/data_section.dart';

class DetailesScreen extends StatelessWidget {
  final String title;
  final DetailSection data;

  const DetailesScreen({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (data.defination != null) DefinitionCard(text: data.defination!),

            if (data.quranVerse != null ||
                data.sunnahHadith != null ||
                data.hucm.isNotEmpty)
              DalelCard(
                wisdomText: data.hucm,

                verseText: data.quranVerse ?? "",

                verseReference: data.quranVerseNumber != null
                    ? "[${data.quranVerseNumber}]"
                    : "",

                hadithText: data.sunnahHadith ?? "",

                hadithSource: data.sunnahHadithRawi != null
                    ? "(${data.sunnahHadithRawi})"
                    : "",
              ),
            if (data.conditions != null && data.conditions!.isNotEmpty)
              ItemsCard(
                title: "الشروط",
                items: data.conditions!,
                visible: true,
              ),

            if (data.howTo != null && data.howTo!.isNotEmpty)
              ItemsCard(title: "الكيفية", items: data.howTo!, visible: true),

            if (data.time != null)
              OtherDescCard(title: "الوقت", text: data.time!),

            if (data.place != null)
              OtherDescCard(title: "المكان", text: data.place!),

            if (data.rulingOnLeaving != null)
              OtherDescCard(title: "حكم الترك", text: data.rulingOnLeaving!),

            if (data.kafarah != null)
              OtherDescCard(title: "الكفارة", text: data.kafarah!),

            if (data.ruhsa != null)
              OtherDescCard(title: "الرخصة", text: data.ruhsa!),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
