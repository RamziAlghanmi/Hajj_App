import 'package:flutter/material.dart';
import 'package:hajj_app/Custome_Widgets/audio_button.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';
import 'package:hajj_app/providers/sound_provider.dart';
import 'package:provider/provider.dart';

class Item {
  final String number;
  final String text;
  final Widget? audioButton;

  Item({required this.number, required this.text, this.audioButton});
}

class SimpleContainer extends StatelessWidget {
  final String title;
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
    this.padding = const EdgeInsets.all(16.0),
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
                      isPlaying: SoundProvider.isAudioEnabled,
                      onPlayPause: () {
                        SoundProvider.toggleAudio();
                      },
                    );
                  },
                ),
              Text(title, style: AppTheme.lightTheme.textTheme.titleMedium),
              const SizedBox(height: 16),

              ...items.map(
                (item) => _buildListItem(
                  item,
                  numberStyle: AppTheme.lightTheme.textTheme.bodyMedium!,
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
                  TextSpan(text: "${item.number} ", style: numberStyle),
                  TextSpan(text: item.text, style: textStyle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
