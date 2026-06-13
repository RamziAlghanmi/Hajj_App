import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/audio_button.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';
import 'package:hajj_app/providers/sound_provider.dart';
import 'package:provider/provider.dart';

class Item {
  final String number;
  final String text;
  String? title;
  final Widget? audioButton;

  Item({
    required this.number,
    required this.text,
    this.audioButton,
    this.title,
  });
}

class SimpleContainer extends StatelessWidget {
  final String title;
  final String cardId;
  final List<Item> items;

  final bool visible;
  final Color backgroundColor;
  final Color shadowColor;
  final double borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;

  const SimpleContainer({
    super.key,
    required this.title,
    required this.items,
    this.visible = true,
    this.backgroundColor = Colors.white,
    this.shadowColor = const Color(0x1A000000),
    this.borderRadius = 16.0,
    this.margin = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    this.padding = const EdgeInsets.all(16.0), required this.cardId,
  });

  @override
  Widget build(BuildContext context) {
    if (!visible) return const SizedBox.shrink();

    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
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
              Text(
                "${title}: ",
                style: AppTheme.lightTheme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 16),

              ...items.map(
                (item) => _buildListItem(
                  item,
                  numberStyle: AppTheme.lightTheme.textTheme.bodyLarge!,
                  titleStyle: AppTheme.lightTheme.textTheme.bodyLarge!,
                  textStyle: AppTheme.lightTheme.textTheme.bodyMedium!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
    Item item, {
    required TextStyle numberStyle,
    required TextStyle textStyle,
    required TextStyle titleStyle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.audioButton != null)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: item.audioButton,
            ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "${item.number}- ", style: numberStyle),
                  if (item.title != null)
                    TextSpan(text: "${item.title}: ", style: titleStyle),
                  TextSpan(text: "${item.text}. ", style: textStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
