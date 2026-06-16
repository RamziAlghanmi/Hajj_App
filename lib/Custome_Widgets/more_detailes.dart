import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/audio_button.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';
import 'package:hajj_app/providers/sound_provider.dart';
import 'package:provider/provider.dart';

class MoreDetailes extends StatelessWidget {
  final String data;
  const MoreDetailes({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Items {
  final String number;
  final String title;

  final Widget? audioButton;

  Items({required this.number, required this.title, this.audioButton});
}

class DefinitionCard extends StatelessWidget {
  final String text;
  final String title;
  final String cardId;

  final bool visible;

  final Color shadowColor;

  final double borderRadius;

  final EdgeInsets padding;

  final EdgeInsets margin;

  const DefinitionCard({
    super.key,
    required this.text,
    this.title = "تعريفه: ",
    this.visible = true,
    this.shadowColor = const Color(0x1A000000),
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            if (visible)
              Consumer<SoundProvider>(
                builder: (context, SoundProvider, _) {
                  return AudioControlButton(
                    isPlaying: SoundProvider.isPlaying(cardId),
                    onPlayPause: () {
                      SoundProvider.toggleAudio(cardId);
                    },
                  );
                },
              ),
            Padding(
              padding: padding,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title: ",
                      style: AppTheme.lightTheme.textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: text,
                      style: AppTheme.lightTheme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DalelCard extends StatelessWidget {
  final String wisdomText;

  final String verseText;

  final String verseReference; // السورة

  final String hadithText;

  final String hadithSource; // الراوي

  final bool visible;
  final String cardId;
  final Color shadowColor;
  final double borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const DalelCard({
    super.key,
    required this.wisdomText,
    required this.verseText,
    required this.verseReference,
    required this.hadithText,
    required this.hadithSource,
    this.visible = true,

    this.shadowColor = const Color(0x1A000000),
    this.borderRadius = 16.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.padding = const EdgeInsets.all(16.0),
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          if (visible)
            Consumer<SoundProvider>(
              builder: (context, SoundProvider, _) {
                return AudioControlButton(
                  isPlaying: SoundProvider.isPlaying(cardId),
                  onPlayPause: () {
                    SoundProvider.toggleAudio(cardId);
                  },
                );
              },
            ),
          Padding(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "حكمه: ",
                      style: AppTheme.lightTheme.textTheme.bodyLarge,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        wisdomText,
                        style: AppTheme.lightTheme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Text(
                  "الدليل: ",
                  style: AppTheme.lightTheme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 8),

                // الآية
                if (verseText != null && verseText!.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.containerBackground,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "قال تعالى [ ${verseText} ]."!,
                                style: AppTheme.quranStyle,
                              ),
                              TextSpan(
                                text: verseReference!,
                                style: AppTheme.lightTheme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 12),
                // الحديث
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.containerBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hadithText,

                        style: AppTheme.lightTheme.textTheme.bodyLarge,
                      ),

                      const SizedBox(height: 4),
                      Text(
                        hadithSource,

                        style: AppTheme.lightTheme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsCard extends StatelessWidget {
  final String title;
  final String cardId;
  final List<Items> items;
  final bool visible;
  final Color shadowColor = const Color(0x1A000000);
  final double borderRadius = 16.0;
  final EdgeInsets margin = const EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 8.0,
  );
  final EdgeInsets padding = const EdgeInsets.all(16.0);

  const ItemsCard({
    super.key,
    required this.title,
    required this.items,
    required this.visible,
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: padding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (visible)
                Consumer<SoundProvider>(
                  builder: (context, SoundProvider, _) {
                    return AudioControlButton(
                      isPlaying: SoundProvider.isPlaying(cardId),
                      onPlayPause: () {
                        SoundProvider.toggleAudio(cardId);
                      },
                    );
                  },
                ),
              Text(title, style: AppTheme.lightTheme.textTheme.bodyLarge!),
              const SizedBox(height: 16),
              ...items.map((item) => _buildItem(item)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(Items item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${item.number}- ",
                  style: AppTheme.lightTheme.textTheme.bodyLarge,
                ),
                TextSpan(
                  text: "${item.title}. ",
                  style: AppTheme.lightTheme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OtherDescCard extends StatelessWidget {
  final String text;
  final String title;
  final String cardId;

  final bool visible;

  final Color shadowColor;

  final double borderRadius;

  final EdgeInsets padding;

  final EdgeInsets margin;

  const OtherDescCard({
    super.key,
    required this.text,
    required this.title,
    this.visible = true,
    this.shadowColor = const Color(0x1A000000),
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();

    return Container(
      width: .infinity,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.containerBackground,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            if (visible)
              Consumer<SoundProvider>(
                builder: (context, SoundProvider, _) {
                  return AudioControlButton(
                    isPlaying: SoundProvider.isPlaying(cardId),
                    onPlayPause: () {
                      SoundProvider.toggleAudio(cardId);
                    },
                  );
                },
              ),
            Padding(
              padding: padding,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$title: ",
                      style: AppTheme.lightTheme.textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: text,
                      style: AppTheme.lightTheme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
