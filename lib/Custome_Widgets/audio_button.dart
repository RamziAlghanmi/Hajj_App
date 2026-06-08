import 'package:flutter/material.dart';
import 'package:hajj_app/core/Thems/app_theme.dart';

class AudioControlButton extends StatelessWidget {
  final bool isPlaying;

  VoidCallback? onPlayPause;

  AudioControlButton({
    super.key,
    required this.isPlaying,

    required this.onPlayPause,
  });

  static const Color brownColor = Color(0xFF8B5A2B);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
       
      child: Row(
        children: [
          GestureDetector(
            onTap: onPlayPause,
            child: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow_rounded,
              color: brownColor,
              size: 50,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(child: Container(height: 3, color: brownColor)),

          const SizedBox(width: 15),

          GestureDetector(
            onTap: onPlayPause,
            child: Container(
              width: 60,
              height: 60,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFFFFCF4),

                border: Border.all(color: brownColor, width: 2),
              ),

              child: Icon(
                isPlaying
                    ? Icons.volume_off_outlined
                    : Icons.volume_up_outlined,
                color: brownColor,
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AudioButton extends StatelessWidget {
  final bool isMuted;
  final VoidCallback onPressed;

  const AudioButton({
    super.key,
    required this.isMuted,
    required this.onPressed,
  });

  static const Color brown = Color(0xFF9B5B1A);
  static const Color bg = Color(0xFFFFFCF2);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 80,

        decoration: BoxDecoration(
          color: bg,
          shape: BoxShape.circle,
          border: Border.all(color: brown, width: 2.5),
        ),

        child: Center(
          child: Icon(
            isMuted ? Icons.volume_off_outlined : Icons.volume_up_outlined,
            color: brown,
            size: 42,
          ),
        ),
      ),
    );
  }
}
