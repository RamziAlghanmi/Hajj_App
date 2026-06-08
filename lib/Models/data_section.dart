import 'package:hajj_app/Custome_Widgets/more_detailes.dart';

class DetailSection {
  final String title;
  final String hucm;
  final String? defination;
  final String? quranVerse;
  final String? quranVerseNumber;
  final String? sunnahHadith;
  final String? sunnahHadithRawi;

  final List<Items>? conditions;
  final List<Items>? howTo;
  final String? time;
  final String? place;
  final String? rulingOnLeaving;
  final String? kafarah;
  final String? ruhsa;

  DetailSection({
    required this.title,
    required this.hucm,
    this.defination,
    this.quranVerse,
    this.sunnahHadith,
    this.conditions,
    this.howTo,
    this.time,
    this.rulingOnLeaving,
    this.kafarah,
    this.ruhsa,
    this.place,
    this.sunnahHadithRawi,
    this.quranVerseNumber,
  });

  bool get hasData =>
      quranVerse != null ||
      quranVerseNumber != null ||
      sunnahHadith != null ||
      sunnahHadithRawi != null ||
      (conditions != null && conditions!.isNotEmpty) ||
      (howTo != null && howTo!.isNotEmpty) ||
      time != null ||
      place != null ||
      rulingOnLeaving != null ||
      kafarah != null ||
      ruhsa != null;
}
